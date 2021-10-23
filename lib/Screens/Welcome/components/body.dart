import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginui/Screens/Login/login_screen.dart';
import 'package:loginui/Screens/Signup/signup_screen.dart';
import 'package:loginui/Screens/Welcome/components/background.dart';
import 'package:loginui/components/rounded_button.dart';
import 'package:loginui/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //this size provide(cung cấp) us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Background(
      //SingleChildScrollView kiểm soát các Column or Row có height hay width vượt
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ), // tạo sizeedbox rỗng để tạo hoảng cách
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                // dùng Navigator để push and pop thao tác với stack điều hướng các màn hình
                // Navigator quản lý các Routes (pages or screens) app thường hiển thị dưới dạng Full-screen

                // MaterialPageRoute là tiện dụng vì nó chuyển sang màn hình mới với các animation <>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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
