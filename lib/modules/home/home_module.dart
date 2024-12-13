import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:proj_filme/application/modules/module.dart';
import 'package:proj_filme/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(name: '/home', page: () => const HomePage()),
  ];
}
