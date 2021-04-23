import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:instagram/module/product_list/view/product_list_view.dart';

class ProductListController extends GetxController {
  ProductListView view;

  bool loading = true;
  List items = [];

  void loadData() async {
    //script untuk mendapatkan data dari API
    var url = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    // List<Map> data = jsonDecode(response.body);
    //
    print(data);
    items.addAll(data);
    loading = false;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
