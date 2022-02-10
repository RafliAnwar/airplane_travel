import 'package:airplane_travel/cubit/seat_cubit.dart';
import 'package:airplane_travel/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final int seatStatus;
  final String id;

  const SeatItem({
    Key? key,
    required this.seatStatus,
    required this.id,
  }) : super(key: key);

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

    return GestureDetector(
      onTap: (){
        context.read<SeatCubit>().selectSeat(id);
      },
      child: Container(
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
          child: child()),
    );
  }
}
