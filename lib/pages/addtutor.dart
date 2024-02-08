import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
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
                      labelText: ("PROFILE PICTURE"),
                      hintText: "Provide Profile Picture",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 30,),
                TextField(

                  decoration: InputDecoration(
                      labelText: ("NAME"),
                      hintText: "Provide Namw",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 30,),
                TextField(

                  decoration: InputDecoration(
                      labelText: ("SUBJECTS"),
                      hintText: "Provide Subjects",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 30,),
                TextField(

                  decoration: InputDecoration(
                      labelText: ("Location"),
                      hintText: "CHAT+VOICE / CHAT ONLY",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: ()
                    {


                    }, child: Text("SUBMIT"),
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Text("BACK TO MENU"),
                  ),
                ),

              ],
            ),
          ),
        ),



      ),
    );
  }
}
