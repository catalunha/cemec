class UserModel {
  static final String collection = 'users';
  late final String uid;
  late final String displayName;
  late final String phoneNumber;
  late final String photoURL;
  late final String email;
  late final bool isActive;
  late final List<String>? appList;
}

class CourseModel {
  late final String coordinatorUserId; // User.id
  late final String title;
  late final String description;
  late final String? iconUrl;
  late final bool isActive; //for adm use
  late final bool isArchivedByAdm; //for adm use
  late final bool isArchivedByTeacher; //for teacher use
  late final List<String>? moduleOrder;
  late final List<String>? teacherUserId;
}

class ModuleModel {
  late final String courseId;
  late final String title;
  late final String description;
  late final String teacherUserId; // User.id
  late final List<String>? resourceOrder;
}

class ResourceModel {
  late final String moduleId;
  late final String title;
  late final String description;
  late final String url;
}

class UserMsgModel {
  late final String userId;
  late final String title;
  late final String description;
  late final DateTime created;
  late final DateTime read;
  late final bool isRead;
}

class UserCourse {
  late final String userId;
  late final String courseId;
  late final bool isBlocked; //for adm use
  late final bool isArchived; //for student use
  late final int porcentage;
  late final Map<String, ResourceIdList>? moduleMap; //{moduleId:resourceLisId}

}

class ResourceIdList {
  late List<String> resourceId;
}
