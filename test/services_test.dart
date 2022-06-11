import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/model/get_all_cities.dart';
import 'package:untitled/model/get_all_city_partners.dart';
import 'package:untitled/model/get_all_countries.dart';
import 'package:untitled/model/get_chat_lists_for_user.dart';
import 'package:untitled/model/get_dialog_of_chat_list.dart';
import 'package:untitled/model/get_other_dialog_chat_list.dart';
import 'package:untitled/model/insert_new_message.dart';
import 'package:untitled/model/login_for_an_exist_user.dart';
import 'package:untitled/model/register_user_model.dart';
import 'package:untitled/service/get/get_service.dart';
import 'package:untitled/service/post/post_service.dart';

void main(){
  Map <String,dynamic> registerUser={
    "name": "adeeb",
    "gender": 0,
    "age": 10,
    "cityId": 1,
    "countryId": 1,
    "phoneNumber": "0994745660",
    "emailAddress": "adeeb@gmail.com",
    "password": "pa@sso0rd",
    "avatar": "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"
  };
  Map <String,dynamic> loginPartnerUser={
    "userNameOrEmailAddress": "pa@sso0rdpartner1@tuqaatech.com",
    "password": "pa@sso0rdpartner1",
    "rememberClient": true  };
  Map <String,dynamic> loginUser={
    "userNameOrEmailAddress": "adeeb@gmail.com",
    "password": "pa@sso0rd",
    "rememberClient": true
  };
  Map <String,dynamic> insertNewMessage= {
      "recipientID": 78,
      "who": 77,
      "message": "message send",
      "time": "2022-06-09T04:46:16.091Z"
    };
  PostService postService=PostService();
  GetService getService=GetService();
  test('Register',()async {
    var result = await postService.registerForNewUser(
        RegisterUserModel.fromJson(registerUser),'services/app/Account/Register');
    expect(result.runtimeType, ResultRegisterUserModel);
  });
  test('LoginForAnExistUser',()async{
      var result=await postService.loginForAnExistUser(LoginForAnExistUser.fromJson(loginUser),'TokenAuth/Authenticate');
      expect(result.runtimeType, ResultLoginForAnExistUser);

  });
  test('loginPartnerUser',()async{
      var result=await postService.loginForAnExistUser(LoginForAnExistUser.fromJson(loginPartnerUser),'TokenAuth/Authenticate');
      expect(result.runtimeType, ResultLoginForAnExistUser);

  });
  test('insertFirebaseTokenForNotification',()async{
      var result=await postService.insertFirebaseTokenForNotification('Bearer%20eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijc3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkZWViQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkZWViQGdtYWlsLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiTktKNU1URVRZQUlaSDNHVDZJN0tSWVU1WFJPSk1KRUQiLCJzdWIiOiI3NyIsImp0aSI6ImRlMDQ2OTlhLWZhMjUtNGI2Yi1hYTZiLTAzODQ1Mzg1ZWEzZSIsImlhdCI6MTY1NDkwNjc3MiwibmJmIjoxNjU0OTA2NzcyLCJleHAiOjE2NTQ5OTMxNzIsImlzcyI6IkFuZHJvaWRUZXN0IiwiYXVkIjoiQW5kcm9pZFRlc3QifQ.s3ZRzceaApQ-pVviYsztejisOMTRWA-DHHTbDNJUqiA','services/app/User/InsertFireBaseToken?firebaseToken=');
      expect(result.runtimeType, ResultLoginForAnExistUser);

  });
  test('Get All Cities',()async{
      var result=await getService.getAllCities('services/app/City/GetAllCities');
      expect(result.runtimeType, ResultGetAllSites);

  });
  test('Get All Countries',()async{
      var result=await getService.getAllCountries('services/app/Country/GetAllCountries');
      expect(result.runtimeType, ResultGetAllCountries);

  });
  test('Get All City Partner',()async{
      var result=await getService.getAllCityPartners(cityId: 1, countryId: 1, endPoint: 'services/app/CityPartner/GetAllCityPartners?',);
      expect(result.runtimeType, ResultGetAllCityPartners);

  });
  test('Insert New Message',()async{
    var result=await postService.insertNewMessage(InsertNewMessage.fromJson(insertNewMessage),'services/app/Chat/PostChat');
    expect(result.runtimeType, ResultInsertNewMessage);

  });
  test('Get All chat list for user',()async{
      var result=await getService.getChatListsForUser('services/app/Chat/GetAllChatList');
      expect(result.runtimeType, ResultGetChatListsForUser);

  });
  test('Get Dialog chat list for user',()async{
      var result=await getService.getDialogOfChatList(id: 'sila78sila77', endPoint: 'services/app/Chat/GetDialogByChatId',);
      expect(result.runtimeType, ResultgetDialogofChatList);

  });
  test('Get Other Dialog chat list for user',()async{
      var result=await getService.getOtherDialogOfChatList(id: 'sila78sila77', endPoint: 'services/app/Chat/GetDialogByChatIdskip');
      expect(result.runtimeType, ResultgetOtherDialogofChatList);

  });
}