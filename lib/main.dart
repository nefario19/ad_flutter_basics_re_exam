import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Flutter_basics_re_exam());
}

class Flutter_basics_re_exam extends StatefulWidget {
  const Flutter_basics_re_exam({Key? key}) : super(key: key);

  @override
  State<Flutter_basics_re_exam> createState() => _Flutter_basics_re_examState();
}

class _Flutter_basics_re_examState extends State<Flutter_basics_re_exam> {
  int nummer1 = 1;
  int nummer2 = 2;

  void changeMeme() {
    setState(() {
      nummer1 = Random().nextInt(8) + 1;
      nummer2 = Random().nextInt(8) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Meme Generator'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/meme$nummer1.jpg'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/meme$nummer2.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.blue),
          ),
          child: Text('Next Memes'),
          onPressed: changeMeme,
        ),
      ),
    );
  }
}
