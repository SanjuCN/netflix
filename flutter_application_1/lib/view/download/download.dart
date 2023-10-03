import 'package:flutter/material.dart';

class download extends StatefulWidget {
  const download({super.key});

  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text("Smart Downloads",style: TextStyle(fontSize: 14,color: Colors.white)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("Introdusing Downloads For You",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:19 )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(width: 332,height: 65,child: Text("asadfsdfhad fghjgfsdhjf hfgdsfsdfadsfgb fhsdagjfsdagfhgsdhjf hjfvgsdashgfafh fhgsdshfgdhfg fsdahgfhgsd fgsdhfghdghjfgsdhfghj dhjfgsdfhgsdfhgsdfhgsdhf hjfgsdfdfhdgfsd hfgsddgfdjgfgdf fvsdsfgsdfgsd hfghdfhjgfdjhfgsdjfgsdfh vfsdfdsfsdg dhfgdfhdgf ",style: TextStyle(color: Colors.white,fontSize: 9,),),),
            ),
            Center(child: Container(height: 177,width: 177,child: CircleAvatar(backgroundColor: Color.fromARGB(255, 42, 41, 41),), ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 347,height: 41,color: Colors.blue,child: Center(child: Text("SETUP",style: TextStyle(fontSize: 13,color: Colors.white),)),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 239,height: 30,color: Color.fromARGB(255, 73, 72, 72),child: Center(child: Text("Find Something to Download",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)),),
            )
        
          ],
        ),
      ),
    );
  }
}
