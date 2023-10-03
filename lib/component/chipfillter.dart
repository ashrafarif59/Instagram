import 'package:flutter/material.dart';

class chip extends StatelessWidget {
  String label;
  Int
   chip({Key? key,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container
        (
        child:Row(
            children: [
              Text(label ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
        ],
        ),
        height: 25,
      width: 35,
      decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.shade400
              )
        ),
      ),
    );
    //   Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 20),
    //   child: Container(child:
    //   Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 5),
    //     child: Row(children: [
    //       //Icon(IconYn=true ?Icons.add_box_outlined : Icons.add,size: 14,),
    //       // SizedBox(width: 3,),
    //       Text(label ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
    //     ],),
    //   ),
    //     height: 25,
    //     decoration: BoxDecoration(
    //         border: Border.all(
    //             color: Colors.grey.shade400
    //         )
    //     ),),
    // );
  }
}
