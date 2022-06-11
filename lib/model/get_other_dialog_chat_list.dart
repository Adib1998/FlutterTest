class ResultgetOtherDialogofChatList {
  String? id;
  int? accountId;
  String? fullName;
  int? contactId;
  String? lastMessage;
  String? lastMessageTime;
  List<Dialogs>? dialogs;

  ResultgetOtherDialogofChatList(
      {this.id,
        this.accountId,
        this.fullName,
        this.contactId,
        this.lastMessage,
        this.lastMessageTime,
        this.dialogs});

  ResultgetOtherDialogofChatList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accountId = json['accountId'];
    fullName = json['fullName'];
    contactId = json['contactId'];
    lastMessage = json['lastMessage'];
    lastMessageTime = json['lastMessageTime'];
    if (json['dialogs'] != null) {
      dialogs = <Dialogs>[];
      json['dialogs'].forEach((v) {
        dialogs!.add(new Dialogs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['accountId'] = this.accountId;
    data['fullName'] = this.fullName;
    data['contactId'] = this.contactId;
    data['lastMessage'] = this.lastMessage;
    data['lastMessageTime'] = this.lastMessageTime;
    if (this.dialogs != null) {
      data['dialogs'] = this.dialogs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dialogs {
  int? id;
  int? who;
  String? message;
  String? chatid;
  String? time;

  Dialogs({this.id, this.who, this.message, this.chatid, this.time});

  Dialogs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    who = json['who'];
    message = json['message'];
    chatid = json['chatid'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['who'] = this.who;
    data['message'] = this.message;
    data['chatid'] = this.chatid;
    data['time'] = this.time;
    return data;
  }
}