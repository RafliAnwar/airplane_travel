import 'package:airplane_travel/shared/theme.dart';
import 'package:airplane_travel/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  const DestinationTile({
    Key? key,
    required this.city,
    required this.name,
    required this.imageUrl,
    this.rating = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 16),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icon_star.png',
                  width: 20,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  rating.toString(),
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
