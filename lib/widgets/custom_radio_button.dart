import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../translations/controller.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton({required this.value,required this.title});
  String value,title;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
      init: AppLanguage(),
      builder: (controller) {
        return RadioListTile(
          title: Text(title.tr),
          value: value,
          groupValue: controller.groupValue,
          activeColor: Colors.amber,
          onChanged: (value) {
            controller.updateValue(value.toString());
          },
        );
      },
    );
  }
}
