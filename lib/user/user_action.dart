import 'package:async_redux/async_redux.dart';
import 'package:cemec/app_state.dart';
import 'package:cemec/user/user_model.dart';
import 'package:cemec/user/userState.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetDocUserAsyncUserAction extends ReduxAction<AppState> {
  final String uid;

  GetDocUserAsyncUserAction({required this.uid});
  @override
  Future<AppState> reduce() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var querySnapshot = await firebaseFirestore
        .collection(UserModel.collection)
        .where('uid', isEqualTo: uid)
        .get();
    var userModelList = querySnapshot.docs
        .map((queryDocumentSnapshot) => UserModel.fromMap(
            queryDocumentSnapshot.id, queryDocumentSnapshot.data()))
        .toList();
    print('--> GetDocUserAsyncUserAction: ${userModelList.length}');
    if (userModelList.length == 1) {
      UserModel userModel = userModelList[0];
      print('--> GetDocUserAsyncUserAction: ' + userModel.toString());
      return state.copy(
          userState: state.userState.copy(
        userCurrent: userModel,
      ));
    }
    print('--> GetDocUserAsyncUserAction: users NAO encontrado');
    return state.copy(
      userState: UserState.initialState(),
    );
  }
}
