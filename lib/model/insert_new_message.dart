class InsertNewMessage {
  int? recipientID;
  int? who;
  String? message;
  String? time;

  InsertNewMessage({this.recipientID, this.who, this.message, this.time});

  InsertNewMessage.fromJson(Map<String, dynamic> json) {
    recipientID = json['recipientID'];
    who = json['who'];
    message = json['message'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['recipientID'] = this.recipientID;
    data['who'] = this.who;
    data['message'] = this.message;
    data['time'] = this.time;
    return data;
  }
}


class ResultInsertNewMessage {
  int? recipientID;
  int? who;
  String? message;
  String? time;

  ResultInsertNewMessage({this.recipientID, this.who, this.message, this.time});

  ResultInsertNewMessage.fromJson(Map<String, dynamic> json) {
    recipientID = json['recipientID'];
    who = json['who'];
    message = json['message'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['recipientID'] = this.recipientID;
    data['who'] = this.who;
    data['message'] = this.message;
    data['time'] = this.time;
    return data;
  }
}