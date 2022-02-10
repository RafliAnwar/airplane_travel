import 'package:airplane_travel/models/destination_model.dart';
import 'package:airplane_travel/shared/theme.dart';
import 'package:airplane_travel/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destinations;

  const DestinationCard(
    this.destinations, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(destinations),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: defaultMargin),
        width: 200,
        height: 323,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  image: NetworkImage(destinations.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultRadius),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        destinations.rating.toString(),
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destinations.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    destinations.city,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
