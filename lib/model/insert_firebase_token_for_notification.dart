class ResultInsertFirebaseTokenForNotification {
  Result? result;
  Null? targetUrl;
  bool? success;
  Null? error;
  bool? unAuthorizedRequest;
  bool? bAbp;

  ResultInsertFirebaseTokenForNotification(
      {this.result,
        this.targetUrl,
        this.success,
        this.error,
        this.unAuthorizedRequest,
        this.bAbp});

  ResultInsertFirebaseTokenForNotification.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
    targetUrl = json['targetUrl'];
    success = json['success'];
    error = json['error'];
    unAuthorizedRequest = json['unAuthorizedRequest'];
    bAbp = json['__abp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['targetUrl'] = this.targetUrl;
    data['success'] = this.success;
    data['error'] = this.error;
    data['unAuthorizedRequest'] = this.unAuthorizedRequest;
    data['__abp'] = this.bAbp;
    return data;
  }
}

class Result {
  String? userName;
  String? name;
  String? surname;
  String? emailAddress;
  bool? isActive;
  String? fullName;
  Null? lastLoginTime;
  String? creationTime;
  Null? roleNames;
  int? id;

  Result(
      {this.userName,
        this.name,
        this.surname,
        this.emailAddress,
        this.isActive,
        this.fullName,
        this.lastLoginTime,
        this.creationTime,
        this.roleNames,
        this.id});

  Result.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    name = json['name'];
    surname = json['surname'];
    emailAddress = json['emailAddress'];
    isActive = json['isActive'];
    fullName = json['fullName'];
    lastLoginTime = json['lastLoginTime'];
    creationTime = json['creationTime'];
    roleNames = json['roleNames'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['emailAddress'] = this.emailAddress;
    data['isActive'] = this.isActive;
    data['fullName'] = this.fullName;
    data['lastLoginTime'] = this.lastLoginTime;
    data['creationTime'] = this.creationTime;
    data['roleNames'] = this.roleNames;
    data['id'] = this.id;
    return data;
  }
}