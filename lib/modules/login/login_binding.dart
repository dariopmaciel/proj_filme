import 'package:get/get.dart';
import 'package:proj_filme/modules/login/login_controller.dart';


class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      // () => LoginController(loginService: Get.find()),
      //?ALTERNAR COM O DE CIMA MARCUS
      () => LoginController(),
    );
  }
}
