import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:badges/badges.dart' as badges;

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  List<String> profile = [
    'image/profilepic.png',
    'image/profile1.jpg',
    'image/profie2.jpeg',
    'image/profile3.jpg',
    'image/profile4.jpg',
    'image/profile5.jpg',
  ];
  List<String> name = [
    'Your Story',
    'karennne',
    'zackjohn',
    'kieron_d',
    'craig_love',
    'newimag',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
            height: 130,
            //   color: Colors.red,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    children: [
                      Container(
                        //height:80,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: index == 1
                                ? [Colors.purple, Colors.brown]
                                : [Colors.red, Colors.orange],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 37,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(profile[index]),
                            child:index == 1
                                ? Container(
                              margin: EdgeInsets.symmetric(vertical: 30),
                              width: 30,
                              height: 20,
                              decoration : BoxDecoration(
                                  color: Colors.purpleAccent,

                              ),
                              child: Center(
                                child: Text('Live', style: TextStyle(
                                  fontSize: 10
                                ),),
                              )
                            )
                                  : null,

                          ),
                        ),
                      ),
                      Center(child: Text(name[index]))
                    ],
                  ),
                );
              },
              itemCount: profile.length,
              scrollDirection: Axis.horizontal,
            )),
      ),
      // body: Container(
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //       itemCount: profile.length,
      //       itemBuilder: (context,index)
      //       {
      //         return
      //            CircleAvatar(
      //             //radius: 40,
      //             backgroundImage: AssetImage(profile[index])
      //            );
      //       }
      //   ),
      // ),
    );
  }
}