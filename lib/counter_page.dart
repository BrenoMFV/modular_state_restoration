import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> with RestorationMixin {
  final RestorableInt _counter = RestorableInt(0);

  @override
  void dispose() {
    _counter.dispose();
    super.dispose();
  }

  void _incrementCounter() {
      _counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ListenableBuilder(listenable: _counter, builder: (context, child) {
                return Text(
                  '${_counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  String? get restorationId => 'counter-page';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_counter, '_counter');
  }
}
