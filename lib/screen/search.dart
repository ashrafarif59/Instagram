//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/component/chipfillter.dart';
import 'package:sizer/sizer.dart';

import '../component/textField.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    List<String> image=['image/grid1.PNG',
      'image/grid2.PNG',
      'image/grid3.PNG',
      'image/grid4.PNG',
      'image/grid5.PNG',
      'image/grid6.PNG',
      'image/grid7.PNG',
      'image/grid8.PNG',
      'image/grid9.PNG',
    ];
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            children: [
              Container(
                height: 35,
                width: MediaQuery.of(context).size.width*.82,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300 ,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none
                    ),

                ),
              ),
              SizedBox(width: 10),
              Icon( (Icons.view_in_ar), color: Colors.black,),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 4.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10),
                chipWidget(label: 'IGTV',iconyn:true, iconName: Icons.table_view,),
                chipWidget(label: 'Shop',iconyn:true, iconName: Icons.shopping_bag,),
                chipWidget(label: 'Style'),
                chipWidget(label: 'Sport'),
                chipWidget(label: 'Auto'),
                chipWidget(label: 'New Shop'),

              ],
            ),
          ),
          SizedBox(height: 1.h,),
          Container(
           child: Column(
             children: [
               MasonryGridView.builder(
                 gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
               mainAxisSpacing: 5,
               crossAxisSpacing: 5,
               itemBuilder: (context,index)
                 {
                   return Image.asset(image[index]);

                       //child: Image(image: AssetImage(image[0]))

                 },
               // children: [
               //   StaggeredGridTile.count(
               //       crossAxisCellCount: 2,
               //       mainAxisCellCount: 2,
               //       child: Image(image: AssetImage(image[0])))
               // ],
               )
             ],
           ),
    // child: SingleChildScrollView(
    // child: Column(
    // children: [
    // GridView.builder(
    // physics: NeverScrollableScrollPhysics(),
    // itemCount: 9,
    // shrinkWrap: true,
    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    // crossAxisCount: 3,
    // //childAspectRatio: 22 / 9,
    // mainAxisSpacing: 5,
    // crossAxisSpacing: 3),
    // itemBuilder: (context, index) {
    // return Container(
    // decoration: BoxDecoration(
    //       color: Colors.grey,
    //       image: DecorationImage(
    //         fit: BoxFit.fill,
    //         image: AssetImage(image[index])),
    //       ),
    // );
    // },
    // ),
    // ],
    // ),
    // ),
    ),
        ],
      )
      // Container(
      //   child: Column(
      //     children: [

      //       GridView(
      //         //itemCount: 9,
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 5,crossAxisSpacing: 5),
      //         children: [
      //
      //           Container(color: Colors.blue,
      //             margin: EdgeInsets.all(5),),
      //           Container(color: Colors.blue,
      //             margin: EdgeInsets.all(5),),
      //         ],
      //         // itemBuilder: (context,index)
      //         //   { return Container();
      //         //   }
      //       ),
      //     ],
      //   ),
      // )
      // // Column(
      // //   children: [
      //
      // //   ],
       //);
    );
  }
}
