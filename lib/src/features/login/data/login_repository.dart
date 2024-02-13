 
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_repository.g.dart';

class LoginRepository{
  final List<String> _user = [];
  void loginUser(String name,String password){
    _user.add(name+password);
  }
}

@Riverpod(keepAlive:true)
LoginRepository loginRepository(LoginRepositoryRef ref){
  final auth = LoginRepository();
  return auth;
}