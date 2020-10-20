import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mytestapp/Screens/Welcome/Signup/signup_screen.dart';
import 'package:mytestapp/Screens/Welcome/components/background.dart';
import 'package:mytestapp/Screens/Welcome/login/login_screen.dart';
import 'package:mytestapp/components/rounded_button.dart';
import 'package:mytestapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this size provide us with total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO MY APP",
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * .45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              color: kPrimaryColor,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.white,
              textColor: Colors.black,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
