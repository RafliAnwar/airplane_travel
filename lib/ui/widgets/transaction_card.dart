import 'package:airplane_travel/models/transaction_model.dart';
import 'package:airplane_travel/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'booking_details_item.dart';

class TransactionCard extends StatelessWidget {

  final TransactionModel transaction;

  const TransactionCard(this.transaction,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //DESTINATION TILE
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                        image: NetworkImage(
                          transaction.destination.imageUrl,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.destination.name,
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
                        transaction.destination.city,
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
                      transaction.destination.rating.toString(),
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
            //BOOKING DETAILS TITLE
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16,
                ),
              ),
            ),
            //BOOKING DETAILS ITEM
            BookingDetailsItem(
              title: 'Traveler',
              valueText: '${transaction.amountOfTraveler} person',
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Seat',
              valueText: transaction.selectedSeat,
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Insurance',
              valueText: transaction.insurance ? 'YES' : 'NO',
              valueColor: greenColor,
            ),
            BookingDetailsItem(
              title: 'Refundable',
              valueText: transaction.refundable ? 'YES' : 'NO',
              valueColor: redColor,
            ),
            BookingDetailsItem(
              title: 'VAT',
              valueText: '${(transaction.vat * 100).toStringAsFixed(0)} %',
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Price',
              valueText: NumberFormat.currency(
                decimalDigits: 0,
                locale: 'id',
                symbol: 'IDR ',
              ).format(transaction.price),
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Grand Total',
              valueText: NumberFormat.currency(
                decimalDigits: 0,
                locale: 'id',
                symbol: 'IDR ',
              ).format(transaction.grandTotal),
              valueColor: primaryColor,
            ),
          ],
        ),
      );
  }
}