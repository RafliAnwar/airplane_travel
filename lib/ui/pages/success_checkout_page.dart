import 'package:airplane_travel/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 80),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_success.png'),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Well Booked 😍',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Are you ready to explore the new\nworld of experiences?',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            //BUTTON
            CustomButton(
              title: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
              },
              widht: 220,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
    );
  }
}
