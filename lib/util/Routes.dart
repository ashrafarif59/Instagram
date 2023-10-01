
import 'package:flutter/material.dart';
import 'package:instagram/screen/login.dart';
import 'package:instagram/screen/main.dart';

import '../screen/previousLogin.dart';
import 'routeName.dart';

class  Routes
{
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch(settings.name)
    {

      case RouteName.previousLogin:
        return MaterialPageRoute(builder: (context)=>previousLogin());

      case RouteName.Login:
        return MaterialPageRoute(builder: (context)=>login());

      case RouteName.Home:
        return MaterialPageRoute(builder: (context)=>home());

    /*  case RouteName.Addnotes:
        return MaterialPageRoute(builder: (context)=>Addnotes());

      case RouteName.ChangeProfile:
        return MaterialPageRoute(builder: (context)=>ChangeProfile());

      case RouteName.CreatePassword:
        return MaterialPageRoute(builder: (context)=>CreatePassword());

      case RouteName.ForgetPassword:
        return MaterialPageRoute(builder: (context)=>ForgetPassword());




      case RouteName.Profile:
        return MaterialPageRoute(builder: (context)=>Profile());

      case RouteName.Register:
        return MaterialPageRoute(builder: (context)=>Register());

      case RouteName.ViewNotes:
        return MaterialPageRoute(builder: (context)=>ViewNotes());

      case RouteName.ViewSigneNotes:
        return MaterialPageRoute(builder: (context)=>ViewSigneNotes());

*/


      default : return MaterialPageRoute(builder: (context)
      {
        return Scaffold(
          appBar: AppBar(
            title: Text('data'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Center(child: Text('No Routing Available',style: TextStyle(fontSize: 35),)),
              )
            ],
          ),
        );
      }
      );


    }
  }
}
