import 'package:arcitecture_example/core/init/provider/provider_list.dart';
import 'package:arcitecture_example/view/home/view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/init/cache/cache_manager.dart';
import 'core/init/navigation/navigation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   CacheManager.prefrencesInit();
  runApp(MultiProvider(providers: [
    ...ProviderList.instance.dependItems
  ],
  child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale:const Locale('tr', 'TR'),
      navigatorKey: NavigationService.instance.navigatorKey,
      localizationsDelegates: const {DefaultWidgetsLocalizations.delegate},
      title: 'Engelsiz Yollar',
      home: const Home(),
    );
  }
}
