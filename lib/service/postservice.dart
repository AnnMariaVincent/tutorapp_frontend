import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:tutor_new/model/postmodel.dart';

class PostApiService{
  Future<dynamic> sendbutton(String pro, name,sub, loc) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/tutors/add");
    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{
          "pro": pro,
          "name": name,
          "subjects": sub,
          "location": loc,


        }
        )
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("Failure");
    }
  }

  Future<List<Tutor>> getTutor() async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/tutors/viewall");
    var response=await client.get(apiUrl);
    if(response.statusCode==200)
    {
      return tutorFromJson(response.body);
    }
    else
    {
      return [];
    }
  }

}