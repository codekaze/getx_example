import 'package:flutter/material.dart';
import 'package:instagram/module/employee_list/controller/employee_list_controller.dart';

import 'package:get/get.dart';

class EmployeeListView extends StatelessWidget {
  final controller = Get.put(EmployeeListController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<EmployeeListController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Employee List"),
          ),
        );
      },
    );
  }
}
