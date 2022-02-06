import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;

  const BookingDetailsItem({
    Key? key,
    required this.title,
    required this.valueText,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: blackTextStyle,
            ),
          ),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
