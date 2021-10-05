import 'package:arcitecture_example/core/init/provider/provider_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/main_view/main_view.dart';

void main() {
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
    return const MaterialApp(
      title: 'Material App',
      home: MainView(),
    );
  }
}
