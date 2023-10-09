import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layered_arch_mobx/product/manager/product_manager.dart';
import 'package:provider/provider.dart';

import 'product/theme/theme_manager.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider.value(value: UserManager()),
      ChangeNotifierProvider(create: (_) => ThemeManager()),
    ],
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material APP',
      theme: context.watch<ThemeManager>().currentTheme,
      home: const Scaffold(),
    );
  }
}
