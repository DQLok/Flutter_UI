import 'package:flutter/material.dart';
import 'package:loginui/components/text_field_container.dart';
import 'package:loginui/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key? key,
    required this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: "Password",
            icon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        //suffixIcon icon ở cuối
        //visibility hiện thị mật khẩu
        suffixIcon: Icon(Icons.visibility, color: kPrimaryColor,),
        border: InputBorder.none
        ),
      ),
    );
  }
}
