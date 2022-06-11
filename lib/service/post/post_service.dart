import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/model/insert_new_message.dart';
import 'package:untitled/model/login_for_an_exist_user.dart';
import 'package:untitled/model/register_user_model.dart';


class PostService {
final String _basicUrl='https://mobiletest.tuqaatech.com/api/';
  Future<dynamic> registerForNewUser(
      RegisterUserModel registerUserModel,String endPoint) async {
    var headers = <String, String>{};
    headers['Content-Type'] = 'application/json-patch+json';
    headers['Accept'] = 'text/plain';


    var body = jsonEncode(registerUserModel.toJson());
    var response = await http.post(
        Uri.parse(_basicUrl+endPoint),
        //EndPoint: services/app/Account/Register
        headers: headers,
        body: body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = ResultRegisterUserModel.fromJson(data);
      return result;
    } else {
      print(response.body);
    }
  }

   loginForAnExistUser(
      LoginForAnExistUser loginForAnExistUser,String endPoint) async {
    var headers = <String, String>{};
    headers['Accept'] = 'text/plain';
    headers['Content-Type'] = 'application/json-patch+json';
    return await http.post(
        Uri.parse(_basicUrl+endPoint),
        //EndPoint:TokenAuth/Authenticate
        headers: headers,
        body: jsonEncode(loginForAnExistUser.toJson()));
  }

  Future<dynamic> insertFirebaseTokenForNotification(String token,String endPoint) async {
    var headers = <String, String>{};
    headers['Accept'] = 'text/plain';
    headers['Content-Type'] = ' application/json-patch+json';
    headers['Authorization'] =
    'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijc3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkZWViQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkZWViQGdtYWlsLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiTktKNU1URVRZQUlaSDNHVDZJN0tSWVU1WFJPSk1KRUQiLCJzdWIiOiI3NyIsImp0aSI6ImRlMDQ2OTlhLWZhMjUtNGI2Yi1hYTZiLTAzODQ1Mzg1ZWEzZSIsImlhdCI6MTY1NDkwNjc3MiwibmJmIjoxNjU0OTA2NzcyLCJleHAiOjE2NTQ5OTMxNzIsImlzcyI6IkFuZHJvaWRUZXN0IiwiYXVkIjoiQW5kcm9pZFRlc3QifQ.s3ZRzceaApQ-pVviYsztejisOMTRWA-DHHTbDNJUqiA';
    headers['X-XSRF-TOKEN'] =
    'CfDJ8EYHCJxjGAhAq89rHM9aNvBW4vdm26pPgKWlRPRmpGh1wCX-V7e8fEpLA7Lk2ejQ3B2bdPGLRSE-4trEoGQ5VoiRvmXVznB4Mk3-99KSpENgqKSHn4QWP07DneWrYXty0H1mQ5BdJCw7IAhzB3ZmYjKVoA_6OMbWNwS4cUEoC5bJMiW1u65J33WLzZGJvNYLlg';



    var response = await http.post(
      Uri.parse(_basicUrl+endPoint+token),
      //EndPoint: services/app/User/InsertFireBaseToken?firebaseToken=
      headers: headers,
    );
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = ResultLoginForAnExistUser.fromJson(data);
      return result;
    }
    else
      throw Exception(response.body);
  }


  Future<dynamic> insertNewMessage(InsertNewMessage insertNewMessage,String endPoint) async {
    var headers = <String, String>{};
    headers['Accept'] = 'text/plain';
    headers['Authorization'] =
    'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijc3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkZWViQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkZWViQGdtYWlsLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiTktKNU1URVRZQUlaSDNHVDZJN0tSWVU1WFJPSk1KRUQiLCJzdWIiOiI3NyIsImp0aSI6ImRlMDQ2OTlhLWZhMjUtNGI2Yi1hYTZiLTAzODQ1Mzg1ZWEzZSIsImlhdCI6MTY1NDkwNjc3MiwibmJmIjoxNjU0OTA2NzcyLCJleHAiOjE2NTQ5OTMxNzIsImlzcyI6IkFuZHJvaWRUZXN0IiwiYXVkIjoiQW5kcm9pZFRlc3QifQ.s3ZRzceaApQ-pVviYsztejisOMTRWA-DHHTbDNJUqiA';
    headers['X-XSRF-TOKEN'] =
    'CfDJ8EYHCJxjGAhAq89rHM9aNvBW4vdm26pPgKWlRPRmpGh1wCX-V7e8fEpLA7Lk2ejQ3B2bdPGLRSE-4trEoGQ5VoiRvmXVznB4Mk3-99KSpENgqKSHn4QWP07DneWrYXty0H1mQ5BdJCw7IAhzB3ZmYjKVoA_6OMbWNwS4cUEoC5bJMiW1u65J33WLzZGJvNYLlg';

    var body = jsonEncode(insertNewMessage.toJson());
    var response = await http.post(
        Uri.parse(_basicUrl+endPoint),
        //EndPoint:services/app/Chat/PostChat
        headers: headers,
        body: body
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = ResultInsertNewMessage.fromJson(data);
      return result;
    }
    else
      throw Exception(response.body);
  }

}