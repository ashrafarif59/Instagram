import 'package:flutter/material.dart';
import 'package:instagram/util/Colors.dart';
import 'package:sizer/sizer.dart';

import 'util/Routes.dart';
import 'util/routeName.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        theme: ThemeData.light()
            .copyWith(scaffoldBackgroundColor: AppColors.whiteColor),
        initialRoute: RouteName.previousLogin,
        onGenerateRoute: Routes.generateRoute,
      );
    });
  }
}
