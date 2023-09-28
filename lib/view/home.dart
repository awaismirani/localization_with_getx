import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../translations/controller.dart';
import '../widgets/custom_radio_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<AppLanguage>(
          init: AppLanguage(),
          builder: (controller) {
            return Text('home'.tr);
          },
        )

      ),
      body:
      GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: (controller) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomRadioButton(value: "en", title: 'english',),
                CustomRadioButton(value: "ar", title: 'arabic',),
                Text(
                  "name".tr,
                  textScaleFactor: 3,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
