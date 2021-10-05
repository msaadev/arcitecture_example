import 'package:arcitecture_example/view/home/service/home_service.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {



  Future get getUsers async {
    return HomeService().getUsers;
  }
}
