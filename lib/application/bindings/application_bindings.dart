import 'package:get/get.dart';
import 'package:proj_filme/repositories/login/login_repository.dart';
import 'package:proj_filme/repositories/login/login_repository_impl.dart';
import 'package:proj_filme/services/login/login_service.dart';
import 'package:proj_filme/services/login/login_service_impl.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    //fenix mantem no ar, faz com que o GET não mate a instancia
    // Get.lazyPut<LoginRepository>(
      // () => LoginRepositoryImpl(),
      // fenix: true,
    // );
   
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        // () => LoginServiceImpl(loginRepository: LoginRepositoryImpl()),
        fenix: true);
  }
}
