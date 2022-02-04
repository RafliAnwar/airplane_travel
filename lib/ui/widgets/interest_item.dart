import 'package:airplane_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class InteresetItem extends StatelessWidget {

  final String text;


  const InteresetItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icon_check.png'), fit: BoxFit.cover),
            ),
          ),
          Text(
            text,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
