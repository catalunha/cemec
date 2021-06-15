import 'package:async_redux/async_redux.dart';
import 'package:cemec/app_state.dart';
import 'package:cemec/user/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetDocUserAsyncUserAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    var querySnapshot = await firebaseFirestore
        .collection(UserModel.collection)
        .where('uid', isEqualTo: state.loginState.userFirebaseAuth?.uid)
        .get();
    var userModelList = querySnapshot.docs
        .map((queryDocumentSnapshot) => UserModel(queryDocumentSnapshot.id)
            .fromMap(queryDocumentSnapshot.data()))
        .toList();
    UserModel userModel = userModelList[0];

    return state.copy(
        userState: state.userState.copy(
      userCurrent: userModel,
    ));
  }
}
