import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 150),
              child: const Text(
                'Result:',
                style: TextStyle(
                  fontSize: 34,
                  color: Color.fromARGB(100, 174, 174, 174),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 15),
              child: const Text(
                '\$100',
                style: TextStyle(
                  fontSize: 64,
                  color: Color.fromARGB(100, 107, 107, 107),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
