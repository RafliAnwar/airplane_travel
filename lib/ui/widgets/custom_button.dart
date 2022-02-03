import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double widht;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton({
    Key? key,
    required this.title,
    this.widht = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            )),
      ),
    );
  }
}
