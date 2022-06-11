import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/model/get_all_city_partners.dart';
import 'package:untitled/model/get_all_countries.dart';
import 'package:untitled/model/get_chat_lists_for_user.dart';
import 'package:untitled/model/get_dialog_of_chat_list.dart';
import '../../model/get_all_cities.dart';
import '../../model/get_other_dialog_chat_list.dart';
import '../../model/login_for_an_exist_user.dart';




class GetService {

  final String _basicUrl='https://mobiletest.tuqaatech.com/api/';


  Future<dynamic> downloadImageForAnyUser ({required int id,required String endPoint}) async{
    var headers=<String,String>{};
    headers['accept']='*/*';
    var response=await http.get(
      Uri.parse(_basicUrl+endPoint+ '$id'),
        //EndPoint:services/app/UserInformation/DownloadImage/id
        headers: headers,
    );

    if(response.statusCode == 200){
      var data=jsonDecode(response.body);
      var result=ResultLoginForAnExistUser.fromJson(data);
      return result;
    }
    else throw Exception('Error');
  }

  Future<dynamic> getAllCities (String endPoint) async{
    var headers=<String,String>{};
    headers['Accept'] = 'text/plain';
    var response=await http.get(
      Uri.parse(_basicUrl+endPoint),
        //EndPoint:services/app/City/GetAllCities
        headers: headers,
    );

    if(response.statusCode == 200){
      var data=jsonDecode(response.body);
      var result=ResultGetAllSites.fromJson(data);
      return result;
    }
    else throw Exception('Error');
  }

  Future<dynamic> getAllCountries (String endPoint) async {
    var headers= <String,String>{};
    headers['Accept'] = 'text/plain';
    var response=  await http.get(
        Uri.parse(_basicUrl+endPoint),
    //EndPoint:services/app/Country/GetAllCountries
    headers: headers);

    if(response.statusCode == 200){
      var data=jsonDecode(response.body);
      var result=ResultGetAllCountries.fromJson(data);
      return result;
    }
    else throw Exception('Error');


    
  }

  Future<dynamic> getAllCityPartners ({required int cityId, required int countryId, int gender=0, int minAge=0, int maxAge=0,String date='', int skipCount=0, int maxResultCount=1,required String endPoint}) async {
    var headers= <String,String>{};
    headers['Accept'] = 'text/plain';
    headers['Authorization']='Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijc3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkZWViQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkZWViQGdtYWlsLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiTktKNU1URVRZQUlaSDNHVDZJN0tSWVU1WFJPSk1KRUQiLCJzdWIiOiI3NyIsImp0aSI6ImRlMDQ2OTlhLWZhMjUtNGI2Yi1hYTZiLTAzODQ1Mzg1ZWEzZSIsImlhdCI6MTY1NDkwNjc3MiwibmJmIjoxNjU0OTA2NzcyLCJleHAiOjE2NTQ5OTMxNzIsImlzcyI6IkFuZHJvaWRUZXN0IiwiYXVkIjoiQW5kcm9pZFRlc3QifQ.s3ZRzceaApQ-pVviYsztejisOMTRWA-DHHTbDNJUqiA';
    headers['X-XSRF-TOKEN']= 'CfDJ8EYHCJxjGAhAq89rHM9aNvBW4vdm26pPgKWlRPRmpGh1wCX-V7e8fEpLA7Lk2ejQ3B2bdPGLRSE-4trEoGQ5VoiRvmXVznB4Mk3-99KSpENgqKSHn4QWP07DneWrYXty0H1mQ5BdJCw7IAhzB3ZmYjKVoA_6OMbWNwS4cUEoC5bJMiW1u65J33WLzZGJvNYLlg';


    var response=  await http.get(
        Uri.parse(_basicUrl+endPoint+'CityId=$cityId&CountryId=$countryId&Gender=$gender&MinAge=$minAge&MaxAge=$maxAge&Date=$date&SkipCount=$skipCount&MaxResultCount=$maxResultCount'),
    //EndPoint:services/app/CityPartner/GetAllCityPartners?
    headers: headers);


    if(response.statusCode == 200){
      var data=jsonDecode(response.body);
      var result=ResultGetAllCityPartners.fromJson(data);
      return result;
    }
    else throw Exception(response.body);



  }

  Future<dynamic> getChatListsForUser (String endPoint)async{
    var headers=<String,String>{};
    headers['accept']='text/plain';
    headers['Authorization']='Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijc3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkZWViQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkZWViQGdtYWlsLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiTktKNU1URVRZQUlaSDNHVDZJN0tSWVU1WFJPSk1KRUQiLCJzdWIiOiI3NyIsImp0aSI6ImRlMDQ2OTlhLWZhMjUtNGI2Yi1hYTZiLTAzODQ1Mzg1ZWEzZSIsImlhdCI6MTY1NDkwNjc3MiwibmJmIjoxNjU0OTA2NzcyLCJleHAiOjE2NTQ5OTMxNzIsImlzcyI6IkFuZHJvaWRUZXN0IiwiYXVkIjoiQW5kcm9pZFRlc3QifQ.s3ZRzceaApQ-pVviYsztejisOMTRWA-DHHTbDNJUqiA';
    headers['X-XSRF-TOKEN']='CfDJ8EYHCJxjGAhAq89rHM9aNvBW4vdm26pPgKWlRPRmpGh1wCX-V7e8fEpLA7Lk2ejQ3B2bdPGLRSE-4trEoGQ5VoiRvmXVznB4Mk3-99KSpENgqKSHn4QWP07DneWrYXty0H1mQ5BdJCw7IAhzB3ZmYjKVoA_6OMbWNwS4cUEoC5bJMiW1u65J33WLzZGJvNYLlg';


    var response= await http.get(
        Uri.parse(_basicUrl+endPoint),
        //EndPoint:services/app/Chat/GetAllChatList
        headers:headers
    );
    if(response.statusCode == 200){
      var data=jsonDecode(response.body);
      var result=ResultGetChatListsForUser.fromJson(data);
      return result;
    }
    else throw Exception('Error');
}

  Future<dynamic> getDialogOfChatList({required String id,required String endPoint}) async {
    var headers=<String,String>{};
    headers['accept']='text/plain';
    headers['Id']=id;
    headers['Authorization']='Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijc3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkZWViQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkZWViQGdtYWlsLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiTktKNU1URVRZQUlaSDNHVDZJN0tSWVU1WFJPSk1KRUQiLCJzdWIiOiI3NyIsImp0aSI6ImRlMDQ2OTlhLWZhMjUtNGI2Yi1hYTZiLTAzODQ1Mzg1ZWEzZSIsImlhdCI6MTY1NDkwNjc3MiwibmJmIjoxNjU0OTA2NzcyLCJleHAiOjE2NTQ5OTMxNzIsImlzcyI6IkFuZHJvaWRUZXN0IiwiYXVkIjoiQW5kcm9pZFRlc3QifQ.s3ZRzceaApQ-pVviYsztejisOMTRWA-DHHTbDNJUqiA';
    headers['X-XSRF-TOKEN']= 'CfDJ8EYHCJxjGAhAq89rHM9aNvBW4vdm26pPgKWlRPRmpGh1wCX-V7e8fEpLA7Lk2ejQ3B2bdPGLRSE-4trEoGQ5VoiRvmXVznB4Mk3-99KSpENgqKSHn4QWP07DneWrYXty0H1mQ5BdJCw7IAhzB3ZmYjKVoA_6OMbWNwS4cUEoC5bJMiW1u65J33WLzZGJvNYLlg';

    var response=await http.get(
      Uri.parse(_basicUrl+endPoint),
      //EndPoint:services/app/Chat/GetDialogByChatId
      headers: headers,
    );
    if(response.statusCode == 200){
      var data=jsonDecode(response.body);
      var result=ResultgetDialogofChatList.fromJson(data);
      return result;
    }
    else throw Exception('Error');
  }

  Future<dynamic> getOtherDialogOfChatList({required String id,int skip=0,required String endPoint}) async {
    var headers=<String,String>{};
    headers['accept']='text/plain';
    headers['Id']=id;
    headers['skip']='$skip';
    headers['Authorization']='Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijc3IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImFkZWViQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6ImFkZWViQGdtYWlsLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiTktKNU1URVRZQUlaSDNHVDZJN0tSWVU1WFJPSk1KRUQiLCJzdWIiOiI3NyIsImp0aSI6ImRlMDQ2OTlhLWZhMjUtNGI2Yi1hYTZiLTAzODQ1Mzg1ZWEzZSIsImlhdCI6MTY1NDkwNjc3MiwibmJmIjoxNjU0OTA2NzcyLCJleHAiOjE2NTQ5OTMxNzIsImlzcyI6IkFuZHJvaWRUZXN0IiwiYXVkIjoiQW5kcm9pZFRlc3QifQ.s3ZRzceaApQ-pVviYsztejisOMTRWA-DHHTbDNJUqiA';
    headers['X-XSRF-TOKEN']= 'CfDJ8EYHCJxjGAhAq89rHM9aNvBW4vdm26pPgKWlRPRmpGh1wCX-V7e8fEpLA7Lk2ejQ3B2bdPGLRSE-4trEoGQ5VoiRvmXVznB4Mk3-99KSpENgqKSHn4QWP07DneWrYXty0H1mQ5BdJCw7IAhzB3ZmYjKVoA_6OMbWNwS4cUEoC5bJMiW1u65J33WLzZGJvNYLlg';

    var response=await http.get(
      Uri.parse(_basicUrl+endPoint),
      //EndPoint:services/app/Chat/GetDialogByChatIdskip
      headers: headers,
    );
    if(response.statusCode == 200){
      var data=jsonDecode(response.body);
      var result=ResultgetOtherDialogofChatList.fromJson(data);
      return result;
    }
    else throw Exception(response.body);
  }
  }





