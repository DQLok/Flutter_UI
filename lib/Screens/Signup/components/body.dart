import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginui/Screens/Login/login_screen.dart';
import 'package:loginui/Screens/Signup/components/background.dart';
import 'package:loginui/Screens/Signup/components/or_divider.dart';
import 'package:loginui/Screens/Signup/components/social_icon.dart';
import 'package:loginui/components/already_have_an_account_acheck.dart';
import 'package:loginui/components/rounded_button.dart';
import 'package:loginui/components/rounded_input_field.dart';
import 'package:loginui/components/rounded_password_field.dart';
import 'package:loginui/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      //SingleChildScrollView set giá trị Column or Row khi vượt quá độ lớn màn hình
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
            RoundedPasswordField(onChange: (value) {}),
            RoundedButton(text: "SIGNUP", press: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (content) {
                  return LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}