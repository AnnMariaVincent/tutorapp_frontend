import 'package:flutter/material.dart';
import 'package:tutor_new/pages/login.dart';

void main() {
  runApp(tut());
}
class tut extends StatelessWidget {
  const tut({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}


