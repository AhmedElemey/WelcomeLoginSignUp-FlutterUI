import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mytestapp/Screens/Welcome/Signup/signup_screen.dart';
import 'package:mytestapp/Screens/Welcome/components/rounded_input_field.dart';
import 'package:mytestapp/Screens/Welcome/login/components/background.dart';
import 'package:mytestapp/components/already_have_an_account_check.dart';
import 'package:mytestapp/components/rounded_button.dart';
import 'package:mytestapp/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * .35,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedInputField(
              hintText: "Enter Mail",
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            AlreadyHaveAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
