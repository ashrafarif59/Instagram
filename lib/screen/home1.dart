import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:badges/badges.dart' as badges;

import '../util/Colors.dart';

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
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,

        automaticallyImplyLeading: false,
        title: Image(
          image: AssetImage(
            'image/logos.png',
          ),
          height: 60,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black,
        ),
        actions: [

          Align(
            alignment: Alignment.center,
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -1, end: -1),
              child: Icon(
                Icons.connected_tv_outlined,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 2.h,
          ),
          Icon(
            Icons.near_me_outlined,
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Container(
                height: 100,
                //   color: Colors.red,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
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
            Divider(color: Colors.grey.shade400,thickness: 1,),
            SizedBox(height: .1.h,),
            ListTile(
              leading: CircleAvatar(
                //radius: 35,
                backgroundImage: AssetImage('image/profile4.jpg'),

              ),
              trailing: Icon(Icons.more_horiz,color: Colors.black,),
              title: Row(children: [
                Text('joshua_l',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(width: 2,),
                Icon(Icons.check_circle,color: Colors.blueAccent,size: 15,)
              ],),
              subtitle: Text('Tokyo, Japan'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("image/picture1.PNG"),
                ),
              ),
            ),
            //Image(image: AssetImage('image/picture1.PNG'),height: 200,width: MediaQuery.of(context).size.width,),
            SizedBox(height: 1.h,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite_border_outlined,size:30),
                  Icon(Icons.circle_outlined,size:30),
                  Icon(Icons.near_me_outlined,size:30),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  Icon(Icons.more_horiz,size:30),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  Icon(Icons.download_for_offline_rounded,size:30),
                ],

              ),
            ),
            SizedBox(height: 1.2.h,),
            Row(
              children: [
                SizedBox(width: 4.w),
                CircleAvatar(backgroundImage: AssetImage('image/picture1.PNG'),radius: 10,),
                SizedBox(width: 2.w,),
                Text('Liked by craig_love and 44,686 others',style: TextStyle(fontSize: 15),),

              ],
            ),
            SizedBox(height: 1.h,),
            Row(
              children: [
                SizedBox(width: 4.w,),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(text: 'joshua_l ', style: TextStyle(color: Colors.blue)),
                        TextSpan(text: ' The game in Japan was amazing and I want to share some photos '),

                      ],
                    ),

                  ),
                ),
              ],
            )
          ],
        ),
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
