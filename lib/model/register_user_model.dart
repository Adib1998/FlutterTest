class RegisterUserModel {
  String? name;
  int? gender;
  int? age;
  int? cityId;
  int? countryId;
  String? phoneNumber;
  String? emailAddress;
  String? password;
  String? avatar;

  RegisterUserModel(
      {this.name,
        this.gender,
        this.age,
        this.cityId,
        this.countryId,
        this.phoneNumber,
        this.emailAddress,
        this.password,
        this.avatar});

  RegisterUserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    age = json['age'];
    cityId = json['cityId'];
    countryId = json['countryId'];
    phoneNumber = json['phoneNumber'];
    emailAddress = json['emailAddress'];
    password = json['password'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['gender'] = this.gender;
    data['age'] = this.age;
    data['cityId'] = this.cityId;
    data['countryId'] = this.countryId;
    data['phoneNumber'] = this.phoneNumber;
    data['emailAddress'] = this.emailAddress;
    data['password'] = this.password;
    data['avatar'] = this.avatar;
    return data;
  }
}
class ResultRegisterUserModel {
  Result? result;
  Null targetUrl;
  bool? success;
  Null error;
  bool? unAuthorizedRequest;
  bool? bAbp;

  ResultRegisterUserModel(
      {this.result,
        this.targetUrl,
        this.success,
        this.error,
        this.unAuthorizedRequest,
        this.bAbp});

  ResultRegisterUserModel.fromJson(Map<String, dynamic> json) {
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
  bool? canLogin;

  Result({this.canLogin});

  Result.fromJson(Map<String, dynamic> json) {
    canLogin = json['canLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['canLogin'] = this.canLogin;
    return data;
  }
}