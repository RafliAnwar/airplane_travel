import 'package:airplane_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final int seatStatus;

  const SeatItem({Key? key, required this.seatStatus}) : super(key: key);

  // 0. Available 1. Selected 2. Unavailable (Status)

  @override
  Widget build(BuildContext context) {
    seatColor() {
      switch (seatStatus) {
        case 0:
          return availableColor;
        case 1:
          return primaryColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    borderColor() {
      switch (seatStatus) {
        case 0:
          return primaryColor;
        case 1:
          return primaryColor;
        case 2:
          return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    child() {
      switch (seatStatus) {
        case 0:
          return Container();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return Container();
        default:
          return Container();
      }
    }

    return Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: seatColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: borderColor(),
          ),
        ),
        child: child());
  }
}
