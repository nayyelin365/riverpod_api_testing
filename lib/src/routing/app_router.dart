import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_test/src/features/login/data/login_repository.dart';
part 'app_router.g.dart';

enum AppRoute {
  home,
  notification 
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref){
final loginRepository = ref.watch(loginRepositoryProvider);
return GoRouter(routes: [
  
]);
}

