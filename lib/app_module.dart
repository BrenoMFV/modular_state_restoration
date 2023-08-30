import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'counter_page.dart';
import 'home_page.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage()),
        ModuleRoute('/counter', module: CounterModule()),
      ];
}

class CounterModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => const CounterPage(),
        ),
      ];
}
