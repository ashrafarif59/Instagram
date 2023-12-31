import 'package:flutter/material.dart';
import 'package:instagram/screen/home1.dart';
import 'package:instagram/util/Colors.dart';
import 'package:sizer/sizer.dart';
import 'package:badges/badges.dart' as badges;

import '../component/button.dart';
import '../component/textField.dart';
import '../util/Asset.dart';
import 'search.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selectIndex = 0;
  void navSelected(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  final List layout =[
    home1(),
    search(),
    home1(),
    home1(),
    home1(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectIndex,
          onTap: navSelected,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: selectIndex==0 ? Icon(Icons.home) :Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(selectIndex==1 ? Icons.search_sharp : Icons.search_off_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(selectIndex==2 ?Icons.add_box : Icons.add_box_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(selectIndex==3 ? Icons.favorite : Icons.favorite_border_outlined), label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    backgroundImage: AssetImage(
                  'image/profilepic.png',
                )),
                label: '')
          ]),

      body: layout[selectIndex]
    );
  }
}

//
// class home extends StatelessWidget {
//   const home({Key? key}) : super(key: key);
//   int selectedIndex =0;
//   void onTapNavigator(int Index)
//   {
//     setState(
//
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController userController = TextEditingController();
//     TextEditingController passwordController = TextEditingController();
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           onTap:(){} ,
//           selectedItemColor: Colors.cyan,
//
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:'' ),
//             BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
//              BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: ''),
//             BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: ''),
//             BottomNavigationBarItem(icon: CircleAvatar(backgroundImage:  AssetImage('image/profilepic.png',)) ,label: '')
//
//           ]
//       ),
//       appBar: AppBar(
//         backgroundColor: AppColors.whiteColor,
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: Image(image: AssetImage('image/logos.png',),height: 60,),
//         centerTitle: true,
//         leading: Icon(Icons.camera_alt_outlined ,color: Colors.black,),
//         actions: [
//           Icon(Icons.breakfast_dining ,color: Colors.black,),
//           Icon(Icons.camera_alt_outlined ,color: Colors.black,),
//         ],
//       ),
//       //body:
//     );
//   }
// }
