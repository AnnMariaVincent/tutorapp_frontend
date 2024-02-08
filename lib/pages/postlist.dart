import 'package:flutter/material.dart';

class postlist extends StatefulWidget {
  const postlist({super.key});

  @override
  State<postlist> createState() => _postlistState();
}

class _postlistState extends State<postlist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),


        ),
      ),
    );
  }
}
