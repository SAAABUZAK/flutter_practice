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
      home: const ProgressBarExample(),
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

class ProgressBarExample extends StatelessWidget {
  const ProgressBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 100),
          CircularProgressIndicator(
            backgroundColor: Colors.blue[600],
            valueColor: AlwaysStoppedAnimation(Colors.blue[100]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: LinearProgressIndicator(
              backgroundColor: Colors.pink[600],
              valueColor: AlwaysStoppedAnimation(Colors.pink[100]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: NetworkImage(
                  'https://i.namu.wiki/i/2437azFTlVtr6KG0V3RbgeyZA43geIaK4BRyQ5OFey_K1Dfy3xpp55efrc6TlyhkNV_WJIUdJ6e-YBX4NB8Unw.webp'),
            ),
          )
        ],
      )),
    );
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
