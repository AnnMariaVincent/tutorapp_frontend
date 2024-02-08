import 'package:flutter/material.dart';
import 'package:tutor_new/pages/addtutor.dart';
import 'package:tutor_new/pages/postlist.dart';
import 'package:tutor_new/pages/search.dart';

class menu extends StatelessWidget {
  const menu({super.key});

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
                SizedBox(height: 30, width: 250,),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: ()
                    {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));



                    }, child: Text("ADD TUTOR"),
                  ),
                ),


                SizedBox(height: 30,
                  width: 250,),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));


                    }, child: Text("SEARCH TUTORS"),
                  ),
                ),



                SizedBox(height: 30,
                  width: 250,),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ),
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>postlist()));


                    }, child: Text("VIEW TUTORS"),
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


