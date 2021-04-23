import 'package:instagram/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountView extends StatelessWidget {
  final controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AccountController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Account"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ExButton(
                  label: "save",
                  onPressed: () {},
                ),
                ExButton(
                  label: "Batal",
                  color: theme.danger,
                  onPressed: () {},
                ),
                ExButton(
                  label: "Batal",
                  color: theme.success,
                  onPressed: () {},
                ),
                ExButton(
                  label: "Batal",
                  color: theme.warning,
                  onPressed: () {},
                ),
                ExButton(
                  label: "Batal",
                  color: theme.info,
                  onPressed: () {},
                ),
                ExButton(
                  label: "Batal",
                  color: theme.primary,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
