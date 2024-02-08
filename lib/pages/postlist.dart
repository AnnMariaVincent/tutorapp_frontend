import 'package:flutter/material.dart';
import 'package:tutor_new/model/postmodel.dart';
import 'package:tutor_new/service/postservice.dart';

class postlist extends StatefulWidget {
  const postlist({super.key});

  @override
  State<postlist> createState() => _postlistState();
}

class _postlistState extends State<postlist> {
  Future<List<Tutor>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PostApiService().getTutor();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.withOpacity(.50),


        ),
        body: FutureBuilder(future: data, builder: (context,snapshot){
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
          {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (value,index){
                  return Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Tutor Name:" +(snapshot.data![index].name)),
                          subtitle: Text("\nSubjects:" +(snapshot.data![index].subjects) + "\nLocation:" +(snapshot.data![index].location)),
                        ),
                        Image.network(snapshot.data![index].pro.toString()),
                        SizedBox(width: 25,),
                        Row(
                          children: [
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text("CONNECT"),
                                ),
                              ],

                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: (){

                                  },
                                  child: Text("SEND MESSAGE"),
                                ),
                              ],

                            ),


                          ],
                        )

                      ],
                    ),

                  );
                }
            );
          }
          else{
            return Text("LOADING");
          }
        }),


      ),
    );
  }
}
