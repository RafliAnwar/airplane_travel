import 'package:airplane_travel/models/transaction_model.dart';
import 'package:airplane_travel/ui/pages/success_checkout_page.dart';
import 'package:airplane_travel/ui/widgets/booking_details_item.dart';
import 'package:airplane_travel/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;

  const CheckoutPage(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 291,
              height: 65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_checkout.png',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
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
                        image: AssetImage(
                          'assets/image_destination1.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
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
                        'Tangerang',
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
                      '4.5',
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
              valueText: '2 person',
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Seat',
              valueText: 'A3, B3',
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Insurance',
              valueText: 'YES',
              valueColor: greenColor,
            ),
            BookingDetailsItem(
              title: 'Refundable',
              valueText: 'NO',
              valueColor: redColor,
            ),
            BookingDetailsItem(
              title: 'VAT',
              valueText: '45 %',
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Price',
              valueText: 'IDR 8.500.690',
              valueColor: blackColor,
            ),
            BookingDetailsItem(
              title: 'Grand Total',
              valueText: 'IDR 12.000.000',
              valueColor: primaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage('assets/image_card.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 6),
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon_plane.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 80.400.000',
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
                          'Current Balance',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget payButton() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 30),
        child: CustomButton(
          title: 'Pay Now',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessCheckoutPage(),
              ),
            );
          },
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          route(),
          bookingDetails(),
          paymentDetails(),
          payButton(),
          tacButton(),
        ],
      ),
    );
  }
}
