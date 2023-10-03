import 'package:flutter/material.dart';

class search_screen extends StatefulWidget {
  const search_screen({super.key});

  @override
  State<search_screen> createState() => _search_screenState();
}

class _search_screenState extends State<search_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
            TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "search for a show,movie,genre.e.t.c.",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: Text(
                "Top Searches",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 76,
                    width: 375,
                    child: Row(
                      children: [
                        Container(
                          height: 76,
                          width: 146,
                          child: Image.asset("assets/image/Rectangle 22 (1).png"),
                        ),
                        SizedBox(width: 15,),
                        Text("Breaking Bad",style: TextStyle(color: Colors.white),),
                     
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: IconButton(onPressed: () {}, icon: Icon(Icons.play_circle,color: Colors.white,)),
                        ),
                        
                      ],
                    ),
                  ),
                );
              },
            ),
                  ],
                ),
          )),
    );
  }
}
