

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_test/src/features/login/data/login_repository.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController{
  @override
  FutureOr<void> build() {
    // nothing to do
  }

  Future<String> login({required String name})async{
      state = const AsyncValue.loading();
      final authRepository = ref.read(loginRepositoryProvider);

      state = await AsyncValue.guard(() => authRepository.loginUser(name));
      return "";
  }
}