import 'package:firebase_auth/firebase_auth.dart';
import 'package:proj_filme/repositories/login/login_repository.dart';

import './login_service.dart';

class LoginServiceImpl implements LoginService {
  LoginRepository _loginRepository;

  LoginServiceImpl({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;
      
  @override
  Future<UserCredential> login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}
