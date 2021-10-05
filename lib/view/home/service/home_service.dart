import 'package:arcitecture_example/core/init/network/network_manager.dart';
import 'package:arcitecture_example/view/home/model/user_model.dart';

class HomeService {
  late final NetworkManager _networkManager;

  HomeService() {
    _networkManager = NetworkManager.instance;
  }

  Future<BaseModel> get getUsers async {
    var response = await _networkManager.dioGet('users?page=2');
    BaseModel model = BaseModel.fromJson(response);
    return model;
  }
}
