import 'package:flutter/material.dart';
import 'package:mytestapp/Screens/Welcome/login/components/social_icon.dart';
import 'package:mytestapp/constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          buildDivider(),
          SizedBox(
            height: size.height * .003,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                IconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                IconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialIcon(
                IconSrc: "assets/icons/google-plus.svg",
                press: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
        child: Divider(
      color: Color(0xFFD9D9D9),
      height: 1.5,
    ));
  }
}
