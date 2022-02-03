import 'package:airplane_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final double bottom;

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    this.bottom = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: blackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: primaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                )),
          )
        ],
      ),
    );
  }
}
