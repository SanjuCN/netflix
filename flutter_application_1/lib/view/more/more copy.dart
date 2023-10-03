import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/database/database.dart';


class more extends StatelessWidget {
  const more({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: database.usernameimage.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              database.usernameimage[index]["image"]),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  database.usernameimage[index]["name"],
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 250,
                color: Color.fromARGB(255, 52, 51, 51),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tell friends about Netflix.",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 37,
                            width: 247,
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  filled: true,
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            width: 96,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Copy Link",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 30,
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/image/whatsapp.png",
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                          Image.asset("assets/image/facebook.png"),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                          Container(height:37,width:36,child:   Image.asset("assets/image/mail.png.png",fit: BoxFit.fill,)),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Container(height: 47,width: 47,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.more_horiz,size: 26,
                                    color: Colors.white,
                                  ),
                                  // Text(
                                  //   "more",
                                  //   style: TextStyle(fontSize: 10,
                                  //        color: Colors.white),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Divider(
                  color: Colors.white,
                  thickness: .9,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: [
                    Text(
                      "App Settings ",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Account ",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Help ",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign Out ",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
     ),
);
}
}