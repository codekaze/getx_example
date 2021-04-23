import 'dart:convert';
import 'package:http/http.dart' as http;

class UserApi {
  loadUser() async {
    var url = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    return data;
  }

  addUser() async {}
  updateUser() async {}
  deleteUser() async {}
}
