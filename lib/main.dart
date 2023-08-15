import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const ButtonExample(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Practice App')),
        body: const Center(
          child: Column(
            children: [Text('Hello'), Text('World'), Text('Flutter')],
          ),
        ));
  }
}

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('Button Practice')),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                elevation: 10.0,
              ),
              onPressed: () => {debugPrint('ElevatedButton Pressed')},
              child: const Text('ElevatedButton <- RaisedButton'),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                ),
                onPressed: () => {debugPrint('FlatButton Pressed')},
                child: const Text('TextButton <- FlatButton')),
            IconButton(
              icon: const Icon(Icons.alarm),
              iconSize: 30,
              color: Colors.red,
              onPressed: () => {debugPrint('IconButton Pressed')},
            ),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => {debugPrint('FloatingActionButton Pressed')},
            ),
            OutlinedButton(
              style: (OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              )),
              child: const Text('OutlinedButton <- Outline Button'),
              onPressed: () => {debugPrint('OutlinedButton Pressed')},
            )
          ],
        )));
  }
}
