import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:instagram/data/model/users.dart';
import 'package:instagram/module/product_list/controller/product_list_controller.dart';

import 'package:get/get.dart';

class ProductListView extends StatelessWidget {
  final controller = Get.put(ProductListController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ProductListController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[300],
            title: Text("People List"),
          ),
          body: controller.loading
              ? Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.builder(
                    itemCount: controller.items.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item = controller.items[index];

                      Users user = Users.fromRawJson(jsonEncode(item));

                      return Card(
                        color:
                            index % 2 == 0 ? Colors.red[50] : Colors.yellow[50],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ID : ${item["id"]}"),
                              Text("Name : ${item["name"]}"),
                              Text("Email : ${item["email"]}"),
                              Text("Email : ${user.email}"),
                              Text("Email : ${user.name}"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        );
      },
    );
  }
}
