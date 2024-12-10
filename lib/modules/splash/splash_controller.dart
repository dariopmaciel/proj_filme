import 'package:get/get.dart';

class SplashController extends GetxController {
  //disponibiliza uma controller dentro da classe page
  @override
  void onReady() {
    // Quando a tela estiver pronta deve IR para outra página
    //!se usuario esta logado
    super.onReady();
    Get.offAllNamed('/login');
  }
}
