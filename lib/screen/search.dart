import 'package:flutter/material.dart';
import 'package:instagram/component/chipfillter.dart';

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
      body: chip(label: 'IG TV'),
    );
  }
}
