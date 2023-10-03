import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/database/database.dart';
import 'package:flutter_application_1/utils/image_constant/image_constant.dart';
import 'package:flutter_application_1/view/bottom%20navi/bottom.dart';
import 'package:flutter_application_1/view/home_screen/home_screen.dart';

class user_screen extends StatefulWidget {
  const user_screen({super.key});

  @override
  State<user_screen> createState() => _user_screenState();
}

class _user_screenState extends State<user_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 90),
              child: Center(
                  child: Image.asset(
                imageConstant.mylogo,
                height: 29,
                width: 106,
              )),
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            SizedBox(
              width: 17,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 170,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 91,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    database.usernameimage[index]["image"]),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          database.usernameimage[index]["name"],
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
