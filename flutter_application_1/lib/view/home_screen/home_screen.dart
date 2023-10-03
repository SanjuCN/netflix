import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/database/database.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';
import 'package:flutter_application_1/view/comingsoon/comingsoon.dart';
import 'package:flutter_application_1/view/download/download.dart';
import 'package:flutter_application_1/view/more/more%20copy.dart';
import 'package:flutter_application_1/view/search_screen/search_screen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedindex,
      //   onTap: (i) => setState(() => _selectedindex = i),
      //   selectedFontSize: 13.0,
      //   unselectedFontSize: 10,
      //   backgroundColor: Colors.black,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: ((context) => home_screen())));
      //         },
      //         child: Icon(
      //           Icons.home,
      //           color: Colors.white,
      //         ),
      //       ),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //           onTap: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: ((context) => search_screen())));
      //           },
      //           child: Icon(Icons.search, color: Colors.white)),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //           onTap: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => comingsoon(),
      //                 ));
      //           },
      //           child: Icon(Icons.video_library_outlined, color: Colors.white)),
      //       label: "Coming Soon",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //           onTap: () {
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) => download(),
      //                 ));
      //           },
      //           child: Icon(Icons.download, color: Colors.white)),
      //       label: "Download",
      //     ),
      //     BottomNavigationBarItem(
      //         icon: InkWell(onTap: () {
      //           Navigator.push(context,MaterialPageRoute(builder: (context)=>more(),));
      //         },
      //           child: Icon(Icons.menu, color: Colors.white)), label: "More"),
      //   ],
      // ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 420,
              child: Stack(
                children: [
                  CarouselSlider(
                      items: List.generate(
                          database.backgroundimage.length,
                          (index) => Container(height: 415,width: 424,
                                child: Image.asset(database.backgroundimage[index],fit:BoxFit.cover,),
                              )),
                      options: CarouselOptions(
                        height: 415,

                        viewportFraction: 1,
                        reverse: false,
                        autoPlay: true,
                      )),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 53,
                            height: 57,
                            child: Image.asset(
                              imageConstant.myLogoIcon,
                              height: 39,
                              width: 20,
                            ),
                          ),
                          Text(
                            "Tv Shows",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "Movies",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "My List",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  label: Text("Play"),
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info,
                          color: Colors.white,
                        )),
                    Text(
                      "info",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 220,
              ),
              child: Text(
                "Preview",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
            ),
            SizedBox(
              height: 102,
              child: ListView.builder(
                  itemCount: 15,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        foregroundImage:
                            AssetImage("assets/image/Ellipse 3.png"),
                        radius: 50,
                        backgroundColor: Colors.white,
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 70,
              ),
              child: Text(
                "Continue Watching For sanju",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 161,
              child: ListView.builder(
                  itemCount: 15,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 103,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    database.moviesimage[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 140,
              ),
              child: Text(
                "Popular On Netflix",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 161,
              child: ListView.builder(
                  itemCount: 13,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 103,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage(database.movies[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 165,
              ),
              child: Text(
                "Trending Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 161,
              child: ListView.builder(
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 103,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage(database.anime[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 120,
              ),
              child: Text(
                "Top 10 in India Today",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 161,
              child: ListView.builder(
                  itemCount: 13,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 103,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage(database.movies[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 240,
              ),
              child: Text(
                "My List",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 161,
              child: ListView.builder(
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 103,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    database.anime[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 165,
              ),
              child: Text(
                "Watch it Again",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 161,
              child: ListView.builder(
                  itemCount: 13,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 103,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    database.movies[index]),
                                fit: BoxFit.cover)),
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 165,
              ),
              child: Text(
                "New Releases",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 161,
              child: ListView.builder(
                  itemCount: 14,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 103,
                        height: 160,
                        child: Image.asset(database.moviesimage[index]),
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
