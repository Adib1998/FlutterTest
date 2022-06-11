class ResultGetAllCountries {
  int? id;
  String? name;
  List<Cities>? cities;

  ResultGetAllCountries({this.id, this.name, this.cities});

  ResultGetAllCountries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['cities'] != null) {
      cities = <Cities>[];
      json['cities'].forEach((v) {
        cities!.add(new Cities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.cities != null) {
      data['cities'] = this.cities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cities {
  int? id;
  int? countryId;
  String? countryName;
  String? name;

  Cities({this.id, this.countryId, this.countryName, this.name});

  Cities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['countryId'];
    countryName = json['countryName'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['countryId'] = this.countryId;
    data['countryName'] = this.countryName;
    data['name'] = this.name;
    return data;
  }
}