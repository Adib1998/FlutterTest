class ResultInsertFirebaseTokenForNotification {
  int? id;
  String? userName;
  String? name;
  String? surname;
  String? emailAddress;
  bool? isActive;
  String? fullName;
  String? lastLoginTime;
  String? creationTime;
  List<String>? roleNames;

  ResultInsertFirebaseTokenForNotification(
      {this.id,
        this.userName,
        this.name,
        this.surname,
        this.emailAddress,
        this.isActive,
        this.fullName,
        this.lastLoginTime,
        this.creationTime,
        this.roleNames});

  ResultInsertFirebaseTokenForNotification.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    name = json['name'];
    surname = json['surname'];
    emailAddress = json['emailAddress'];
    isActive = json['isActive'];
    fullName = json['fullName'];
    lastLoginTime = json['lastLoginTime'];
    creationTime = json['creationTime'];
    roleNames = json['roleNames'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['emailAddress'] = this.emailAddress;
    data['isActive'] = this.isActive;
    data['fullName'] = this.fullName;
    data['lastLoginTime'] = this.lastLoginTime;
    data['creationTime'] = this.creationTime;
    data['roleNames'] = this.roleNames;
    return data;
  }
}