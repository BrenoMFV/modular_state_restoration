import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_restauration/app_widget.dart';
import 'app_module.dart';

void main() {
  runApp(
    RestorationScope(
      restorationId: 'root',
      child: ModularApp(module: AppModule(), child: const MyApp()),
    ),
  );
}
