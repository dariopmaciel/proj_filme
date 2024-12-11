import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:proj_filme/modules/login/login_controller.dart';

// class LoginPage extends StatelessWidget {
//ou eu puxo uma controller ou uso GETVIEW
// var controller = Get.find<LoginController>();

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Login Page')),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/1x/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black45,
            width: Get.width,
            height: Get.height,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset('assets/images/1x/logo.png'),
              ),
              SizedBox(
                width: Get.width * 0.9,
                height: 42,
                child: SignInButton(
                  Buttons.Google,
                  text: 'Entrar com Google',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  onPressed: () => controller.login(), //!AQUI
                ),
              ),
              // SizedBox(height: Get.height * .5),
              // Obx(() {//!AQUI
              //   return Text(
              //     // 'Este APP foi criado por Dario P Maciel',
              //     'Este APP foi criado ${controller.nome.value}',
              //     style: const TextStyle(color: Colors.white),
              //   );
              // })
            ],
          ),
        ],
      ),
    );
  }
}
