import 'package:flutter/material.dart';
import 'package:loginui/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color,textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // EdgeInsets.symmetric tạo ra một đối tượng 
      //EdgeInsets đối xứng từ hai tham số horizontal và vertical.
      //horizontal ngang, vertical thẳng
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
    // ClipRRect là 1 widget kẹp child bằng hình chữ nhật tròn có các góc bo tròn
      child: ClipRRect(
        // bo các góc
        borderRadius: BorderRadius.circular(29),
        child: TextButton(          
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color
          ),
          onPressed: press, child: Text(text, style: TextStyle(color: textColor),),
          ),
      ),
    );
  }
}
