import 'package:flutter/material.dart';
import 'package:flutter_practice/Example/progressBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example',
      home: Grade(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Example App'),
          backgroundColor: const Color(0xFFFFA9A9),
          centerTitle: true,
          elevation: 5.0,
          shadowColor: const Color(0xFFFF9393),
        ),
        backgroundColor: const Color(0xFFFFDADA),
        body: const Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpeg'),
                    radius: 60.0,
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Color(0xFF2F2F2F),
                  thickness: 0.5,
                  endIndent: 30.0,
                ),
                Name(),
                SizedBox(
                  height: 30.0,
                ),
                Position(),
                SizedBox(
                  height: 30.0,
                ),
                Characterestics(),
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/media/Fqh0RCUaQAA7CMY.jpg'),
                    radius: 40.0,
                  ),
                ),
              ],
            )));
  }
}

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name', style: TextStyle(color: Colors.black, letterSpacing: 2.0)),
        SizedBox(
          height: 10.0,
        ),
        Text('EUGENE CHA',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class Position extends StatelessWidget {
  const Position({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Position',
            style: TextStyle(color: Colors.black, letterSpacing: 2.0)),
        SizedBox(
          height: 10.0,
        ),
        Text('CENTER',
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class Characterestics extends StatelessWidget {
  const Characterestics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Icon(Icons.check_circle_outlined),
            SizedBox(
              width: 10.0,
            ),
            Text(
              '룸메이트: 누구더라',
              style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
            )
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle_outlined),
            SizedBox(
              width: 10.0,
            ),
            Text(
              '특수능력: Black hole (S)',
              style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
            )
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle_outlined),
            SizedBox(
              width: 10.0,
            ),
            Text(
              '끼: S+',
              style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
            )
          ],
        )
      ],
    );
  }
}
