import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class chipWidget extends StatelessWidget {
  String label;
  bool iconyn;
  IconData iconName;

  chipWidget({Key? key,required this.label,this.iconyn = false,this.iconName=Icons.arrow_circle_right}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 5.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
            borderRadius:  BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Chip(label: Text(label,style: TextStyle(fontSize: 12),),
          backgroundColor: Colors.white,
            shadowColor: Colors.grey,
            avatar: iconyn == true ?CircleAvatar(child: Icon(iconName,size: 20,color: Colors.black,),backgroundColor: Colors.white,)
            :null,
            //shape:
          ),
        ),
      ),
    );
    
  }
}
