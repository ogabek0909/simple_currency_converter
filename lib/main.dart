// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

TextEditingController text1 = TextEditingController(text: '');

class _MyAppState extends State<MyApp> {
  String name = '\$0';
  String b = '';
  String us = '🇺🇸';
  String c = '🇺🇸';
  String uzb = '🇺🇿';
  double a = 0;

  changer() {
    //uzb = '';
    //us = '';
    setState(() {
      us = uzb;
      uzb = c;
      c = us;
    });
  }

  func() {
    a = double.parse(text1.text);
    if (uzb == '🇺🇸') {
      a = a * 11000;
      b = '${a}';
      name = '0';
    } else {
      a = a * 0.00011;
      b = '\$${a.toStringAsPrecision(2)}';
    }
    //a = double.parse(text1.text) * 0.00011;
    setState(() {
      name = b;
    });
  }

  @override
  Widget build(BuildContext context) {
    //String name=text1.text;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text(
                  'Result:',
                  style: TextStyle(
                    fontSize: 34,
                    color: Color.fromARGB(100, 174, 174, 174),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 64,
                    color: Color.fromARGB(100, 107, 107, 107),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: TextField(
                  controller: text1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text('Amount'),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(100, 107, 107, 107)))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('From'),
                        Text(
                          uzb,
                          style: TextStyle(fontSize: 60),
                        ),
                      ],
                    ),
                    OutlinedButton(
                        onPressed: changer,
                        child: Icon(
                          Icons.sync_alt,
                          size: 60,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('To'),
                        Text(
                          us,
                          style: TextStyle(fontSize: 60),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: func,
                    child: Text(
                      'CONVERT',
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(60))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
