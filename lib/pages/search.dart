import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),
        ),

        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 700,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.pinkAccent.withOpacity(.3),
                      Colors.lightBlueAccent.withOpacity(.2),
                      Colors.lightBlueAccent.withOpacity(.2),
                      Colors.purpleAccent.withOpacity(.1),
                      Colors.pinkAccent.withOpacity(.3),

                    ]
                )
            ),

            padding: EdgeInsets.all(50),
            child: Column(
                children: [
                  SizedBox(height: 30,),
                  TextField(

                    decoration: InputDecoration(
                        labelText: ("Search Tutor"),
                        hintText: "Search Tutor",
                        border: OutlineInputBorder()
                    ),
                  ),

                  SizedBox(height: 20,width: 250,),
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black12.withOpacity(.2),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          )
                      ),
                      onPressed: () {
                      },
                      child: Text("SEARCH"),
                    ),
                  ),

                ]
            ),
          ),
        ),
      ),
    );
  }
}

