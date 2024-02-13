
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository.g.dart';

class HomeRepository{
  Future<String> getString()async{
    return "Hi Nay Ye";
  }
}

@riverpod
HomeRepository homeRepository(HomeRepositoryRef ref){
  final repository = HomeRepository();

  return HomeRepository();
}