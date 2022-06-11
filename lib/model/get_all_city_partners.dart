class ResultGetAllCityPartners {
  int? id;
  int? prtnerId;
  int? cityId;
  int? age;
  int? gender;
  String? date;
  String? userName;
  String? cityName;

  ResultGetAllCityPartners(
      {this.id,
        this.prtnerId,
        this.cityId,
        this.age,
        this.gender,
        this.date,
        this.userName,
        this.cityName});

  ResultGetAllCityPartners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    prtnerId = json['prtnerId'];
    cityId = json['cityId'];
    age = json['age'];
    gender = json['gender'];
    date = json['date'];
    userName = json['userName'];
    cityName = json['cityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['prtnerId'] = this.prtnerId;
    data['cityId'] = this.cityId;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['date'] = this.date;
    data['userName'] = this.userName;
    data['cityName'] = this.cityName;
    return data;
  }
}