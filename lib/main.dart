import 'package:instagram/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/module/employee_list/view/employee_list_view.dart';
import 'package:instagram/module/product_list/view/product_list_view.dart';
import 'module/navigation/main_navigation/view/main_navigation_view.dart';

void main() async {
  await MainSetup.setup();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: appThemeData,
    defaultTransition: Transition.fade,
    home: getHome(),
  ));
}

Widget getHome() {
  // return MainNavigationView();
  return EmployeeListView();
}
