import 'package:http/http.dart'as http;
class ApiHelper{
  Future<String> apicall(String n1,String j1) async {

    String link="https://reqres.in/api/users";
    Uri uri=Uri.parse(link);
    var json = await http.post(uri,body: {"name":n1,"job":j1});

    if(json.statusCode==201){
      return "succefully";
    }
    return "failled";


  }
}
