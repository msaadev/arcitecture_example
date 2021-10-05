import 'package:arcitecture_example/core/init/network/network_manager.dart';

class HomeService {
  late final NetworkManager _networkManager;

  HomeService() {
    _networkManager = NetworkManager.instance;
  }

  Future? get getUsers async {
    var response = _networkManager.dioGet('users?page=2');
    return response;
  }
}
