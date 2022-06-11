class LoginForAnExistUser {
  String? userNameOrEmailAddress;
  String? password;
  bool? rememberClient;

  LoginForAnExistUser(
      {this.userNameOrEmailAddress, this.password, this.rememberClient});

  LoginForAnExistUser.fromJson(Map<String, dynamic> json) {
    userNameOrEmailAddress = json['userNameOrEmailAddress'];
    password = json['password'];
    rememberClient = json['rememberClient'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userNameOrEmailAddress'] = this.userNameOrEmailAddress;
    data['password'] = this.password;
    data['rememberClient'] = this.rememberClient;
    return data;
  }
}
class ResultLoginForAnExistUser {
  String? accessToken;
  String? encryptedAccessToken;
  int? expireInSeconds;
  int? userId;

  ResultLoginForAnExistUser(
      {this.accessToken,
        this.encryptedAccessToken,
        this.expireInSeconds,
        this.userId});

  ResultLoginForAnExistUser.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    encryptedAccessToken = json['encryptedAccessToken'];
    expireInSeconds = json['expireInSeconds'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    data['encryptedAccessToken'] = this.encryptedAccessToken;
    data['expireInSeconds'] = this.expireInSeconds;
    data['userId'] = this.userId;
    return data;
  }
}