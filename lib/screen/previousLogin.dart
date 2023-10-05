import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../component/button.dart';
import '../util/Asset.dart';
import '../util/Colors.dart';
import '../util/routeName.dart';

class previousLogin extends StatelessWidget {
  const previousLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'image/logos.png',
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'image/profilepic.png',
                    ),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'jacob_w',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  PrimaryButton(
                      title: 'Login',
                      backgroundColor: Colors.blue,
                      iconYN: false,
                      bordercircular: 10,
                      height: 5.h,
                      fontsize: 14,
                      onPress: () {
                        Navigator.pushNamed(context, RouteName.Login);
                      }),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Switch accounts',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 12.h,
              child: Column(
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 1.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            color: Colors.grey.shade800),
                      ),
                      Text(
                        'Sign up.',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            )
            // Column(
            //   children: [],
            // ),
            // Column(
            //   children: [
            //     Divider(),
            //     Row(
            //       children: [
            //         Text('Don’t have an account?'),
            //         Text('Sign up.'),
            //       ],
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
