import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductApi {
  loadProduct() async {
    var url = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    return data;
  }

  addProduct() async {}
  updateProduct() async {}
  deleteProduct() async {}
}
