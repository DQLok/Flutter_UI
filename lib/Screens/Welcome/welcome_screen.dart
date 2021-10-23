import 'package:flutter/material.dart';
import 'package:loginui/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //triển khai cấu trúc bố cục hình ảnh
    return Scaffold(
        body: Body(),
    );
  }
}