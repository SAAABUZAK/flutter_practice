import 'package:flutter/material.dart';

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

