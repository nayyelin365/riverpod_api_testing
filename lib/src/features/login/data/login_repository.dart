 
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_test/src/utils/in_memory_store.dart';
part 'login_repository.g.dart';

class LoginRepository{
  final List<String> _user = [];
    final _authState =InMemoryStore<String?>("");

    Stream<String?> authStateChanges() => _authState.stream;
   String? get currentUser => _authState.value;

  void dispose() => _authState.close();

  Future<String> loginUser(String unsername)async{
    _user.add(unsername);
    _authState.value = unsername;
    return unsername;
  }
}

@Riverpod(keepAlive:true)
LoginRepository loginRepository(LoginRepositoryRef ref){
  final auth = LoginRepository();
  ref.onDispose(() => auth.dispose());
  return auth;
}
 