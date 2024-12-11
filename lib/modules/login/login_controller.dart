import 'package:get/get.dart';

import 'package:proj_filme/application/ui/loader/loader_mixin.dart';
import 'package:proj_filme/application/ui/messages/messages_mixin.dart';
import 'package:proj_filme/services/login/login_service.dart';

// convceito de herança multipla de mixin
class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  // String nome = "Dario de Paula Maciel";
  var nome = "por: Dario de Paula Maciel".obs;

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
    // nome.value = "na: Academia do Flutter";
    //
    // loading.value = true;
    loading(true);
    
    // await Future.delayed(const Duration(seconds: 2));
    await 2.seconds.delay();
    // loading.value = false;
    loading(false);
    // Get.snackbar('Teste', "TESTADO");
    message(
        MessageModel.error(title: 'Titulo ERRO', message: 'Mensagem de ERRO'));
    await 1.seconds.delay();
    message(
        MessageModel.info(title: 'Titulo INFO', message: 'Mensagem de INFO'));
    await 1.seconds.delay();

    // try {
    //   loading(true);
    //   await 2.seconds.delay();
        // await _loginService.login();
    //   loading(false);
    //   message(
    //     MessageModel.info(
    //       title: 'Login SUCESSO',
    //       message: 'Sucesso ao realizar login',
    //     ),
    //   );
    // } catch (e, s) {
    //   print('ERROR ====> $e');
    //   print('STACKTRACE ====> $s');
    //   loading(false);
    //   message(
    //     MessageModel.error(
    //       title: 'ERRO',
    //       message: 'ERRO AO REALIZAR LOGIN',
    //     ),
    //   );
    // }
  }
}
