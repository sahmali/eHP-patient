import 'package:flutter/material.dart';
import '../style.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Function onTap;
  CustomTextButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        title,
        style: textButtonStyle,
      ),
      onTap: onTap,
    );
  }
}
