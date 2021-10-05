
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'main_notifier.dart';

class ProviderList {

   static ProviderList? _instance;

  static ProviderList get instance {
    _instance ??= ProviderList._init();
    return _instance!;
  }

  ProviderList._init();

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(create: (_) => MainNotifier()),
  ];
  List<SingleChildWidget> uiChanges = [];
  List<SingleChildWidget> singleItems = [];

}