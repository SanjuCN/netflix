import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class comingsoon extends StatefulWidget {
  
  const comingsoon({super.key});

  @override
  State<comingsoon> createState() => _comingsoonState();
}

class _comingsoonState extends State<comingsoon> {
  List<String> videoLinks = ["O8WK1iiWPN0","iRff3CbaJDM","Ar17uDapnt4"];
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "iRff3CbaJDM",
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 19,
                      width: 19,
                      child: Image.asset("assets/image/Group 49.png"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Notification",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey,
                    height: 67,
                    width: 375,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 55,
                            width: 116,
                            child: Image.asset("assets/image/Rectangle 21.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "New Arrivals",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                              Text(
                                "Peaky Blinders",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                              ),
                              Text(
                                "Nov 6",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 375,
                    height: 450,
                    child: Column(
                      children: [
                        // Container(
                        //   width: 375,
                        //   height: 195,
                        //   child:
                        //       Image.asset("assets/image/Rectangle 22 (2).png"),
                        // ),
                         YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 290),
                          child: SizedBox(
                            height: 40,
                            width: 126,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 29,
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 29,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 354,
                          height: 125,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 220),
                                child: Text(
                                  "season 1 is coming in Dec18",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 240),
                                child: Text(
                                  "AVENGERS",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  height: 40,
                                  width: 354,
                                  child: Text(
                                    "shgahjgdsjkb bfhesdsjkfhsed ghkjdgfsjdgfsd shjghjdgfdfhvasm dbgdassdh  fhseshjvfsdj jdbfdgsdh  ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  )),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "sports . triller . adult . cars . entertainment . fast . happy",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
