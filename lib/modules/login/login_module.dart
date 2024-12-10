import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:proj_filme/application/modules/module.dart';
import 'package:proj_filme/modules/login/login_binding.dart';
import 'package:proj_filme/modules/login/login_page.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
