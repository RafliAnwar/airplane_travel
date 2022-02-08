import 'package:airplane_travel/cubit/auth_cubit.dart';
import 'package:airplane_travel/ui/widgets/destination_card.dart';
import 'package:airplane_travel/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                top: 30,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy,\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where to fly today?',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image_profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }else{
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                imageUrl: 'assets/image_destination1.png',
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination2.png',
                name: 'Miami',
                city: 'Roma',
                rating: 4,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination3.png',
                name: 'La Casa',
                city: 'Venezia',
                rating: 4.5,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination4.png',
                name: 'La Casa',
                city: 'Venezia',
                rating: 4.5,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination5.png',
                name: 'La Casa',
                city: 'Venezia',
                rating: 4.5,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Bali',
              imageUrl: 'assets/image_destination6.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Bali',
              imageUrl: 'assets/image_destination7.png',
              rating: 4.6,
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Bali',
              imageUrl: 'assets/image_destination8.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Bali',
              imageUrl: 'assets/image_destination9.png',
              rating: 4.6,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
