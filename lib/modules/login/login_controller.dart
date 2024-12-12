import 'package:get/get.dart';

import 'package:proj_filme/application/ui/loader/loader_mixin.dart';
import 'package:proj_filme/application/ui/messages/messages_mixin.dart';
import 'package:proj_filme/services/login/login_service.dart';

// convceito de herança multipla de mixin
class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  // String nome = "Dario de Paula Maciel";
  var nome = "por: Dario de Paula Maciel".obs;

  // final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  // LoginController({required LoginService loginService})
  //     : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    //? ALTERNAR COM O DE BAIXO
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
    //!-------------------------------------------


//? ALTERNAR COM O DE CIMAA
    // try {
    //   loading(true);
    //   await _loginService.login();
    //   loading(false);
    //   message(MessageModel.info(title: 'Sucesso', message: 'Login efetuado com SUCESSO'));
    // } catch (e, s) {
    //   print("ERRO====> $e");
    //   print("ERRO====> $s");
    //   message(MessageModel.error(          title: 'Login Erro', message: 'ERRO ao realizar login'));
    //   throw Exception('ERRO ao realizar login ');
    // }
  }
}
