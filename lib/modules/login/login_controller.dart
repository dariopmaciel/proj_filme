import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get/get.dart';

import 'package:proj_filme/application/ui/loader/loader_mixin.dart';
import 'package:proj_filme/application/ui/messages/messages_mixin.dart';
import 'package:proj_filme/services/login/login_service.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
// convceito de herança multipla de mixin
  // String nome = "Dario de Paula Maciel";
  // var nome = "por: Dario de Paula Maciel".obs;

  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await 2.seconds.delay();
      await _loginService.login();
      // print('API TOKEN FUNCIONANDO: ${FirebaseRemoteConfig.instance.getString('api_token')}');
      loading(false);
      message(MessageModel.info(
        title: 'Login SUCESSO',
        message: 'SUCESSO ao realizar login',
      ));
    } catch (e, s) {
      print('ERROR ====> $e');
      print('STACKTRACE ====> $s');
      loading(false);
      message(
        MessageModel.error(
          title: 'ERRO',
          message: 'ERRO AO REALIZAR LOGIN',
        ),
      );
    }
  }
}
