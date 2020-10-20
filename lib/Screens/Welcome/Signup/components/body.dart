import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mytestapp/Screens/Welcome/Signup/components/background.dart';
import 'package:mytestapp/Screens/Welcome/Signup/components/orDivider.dart';
import 'package:mytestapp/Screens/Welcome/components/rounded_input_field.dart';
import 'package:mytestapp/Screens/Welcome/login/login_screen.dart';
import 'package:mytestapp/components/already_have_an_account_check.dart';
import 'package:mytestapp/components/rounded_button.dart';
import 'package:mytestapp/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SIGN Up',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * .4,
            ),
            RoundedInputField(
              hintText: "Your Email",
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SignUP",
              press: () {},
            ),
            SizedBox(
              height: size.height * .003,
            ),
            AlreadyHaveAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
          ],
        ),
      )),
    );
  }
}
