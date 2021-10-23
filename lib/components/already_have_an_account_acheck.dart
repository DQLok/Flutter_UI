import 'package:flutter/material.dart';
import 'package:loginui/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        // bắt được và gửi sự kiện dựa trên cử chỉ đó
        GestureDetector(
          onTap: press,
            child: Text(
          login ? "Sign Up" : "Sign In",
          style: TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
