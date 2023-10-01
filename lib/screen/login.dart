import 'package:flutter/material.dart';
import 'package:instagram/util/Colors.dart';
import 'package:sizer/sizer.dart';

import '../component/button.dart';
import '../component/textField.dart';
import '../util/Asset.dart';
import '../util/routeName.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
            child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 3.h,),
                  Image(image: AssetImage('image/logos.png',),),
                  SizedBox(height: 4.h,),
                  TextfieldCustom(
                      label: '',
                      hinttext: 'User Name',
                      TextController: userController,
                      Keyboardtype: TextInputType.text),
                  SizedBox(height: 2.h,),
                  TextfieldCustom(
                      label: '',
                      obscureText: true,
                      hinttext: 'Password',
                      TextController: passwordController,
                      Keyboardtype: TextInputType.text),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  PrimaryButton(
                      title: 'Login',
                      backgroundColor: Colors.lightBlueAccent,
                      iconYN: false,
                      bordercircular: 10,
                      height: 5.h,
                      fontsize: 14,
                      onPress: () {
                         Navigator.pushNamed(context, RouteName.Home);
                      }),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image(image: AssetImage('image/facebook.jpg',),height: 15,),
                      SizedBox(width: 2.w,),
                      Text(
                        'Log in with Facebook',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                            child: Divider(
                              color: Colors.grey,
                            )),
                        Text(
                          "      OR      ",
                          style: TextStyle(color: Colors.blueGrey,fontSize: 14),
                        ),
                        Expanded(
                            child: Divider(
                              color: Colors.grey,
                            )),
                      ]),
                  SizedBox(height: 5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            color: Colors.grey.shade800),
                      ),
                      Text(
                        'Sign up.',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
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
                  Text(
                    'Instagram от Facebook ',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Colors.grey.shade800),
                  ),

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
