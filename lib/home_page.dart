import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: ElevatedButton(
          child: const Text("Counter Page"),
          onPressed: () => Modular.to.pushNamed('/counter/'),
        ),
      ),
    );
  }
}
