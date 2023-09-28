import 'package:get/get.dart';
import 'package:localization_with_getx/translations/controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppLanguage(), fenix: true);
  }
}
