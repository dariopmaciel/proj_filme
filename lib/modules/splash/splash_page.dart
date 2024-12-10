import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proj_filme/modules/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  //Procura uma instância já registrada no GetX (gerenciamento de dependências).
  // O ciclo de vida da instância é gerenciado automaticamente pelo GetX.
  // var controller = Get.find<SplashController>();
  //'get.find' da erro pois eu não dei a instancia => usar Get.put e SplashController
  // var controller = Get.put(SplashController());

  // Cria uma nova instância do controlador diretamente.
  // Não há controle de ciclo de vida ou injeção de dependência.
  // O controlador não é compartilhado com outros componentes ou telas, a menos que você o passe explicitamente.
  // var controller = SplashController();

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Splash Page'),
      // ),
      body: Center(
        child:
            // Text('data'),
            // Text(FirebaseRemoteConfig.instance.getString('api_token')),
            Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/1x/background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset('assets/images/1x/logo.png'),
        ),
      ),
    );
  }
}
