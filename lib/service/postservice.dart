import 'package:http/http.dart' as http;
import 'package:tutor_new/model/postmodel.dart';
class PostApiService{
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
