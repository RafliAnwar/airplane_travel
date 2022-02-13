import 'package:airplane_travel/cubit/auth_cubit.dart';
import 'package:airplane_travel/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Center(
              child: Container(
                padding: EdgeInsets.all(defaultMargin),
                width: 300,
                height: 211,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image_card.png'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor.withOpacity(0.5),
                        blurRadius: 50,
                        offset: Offset(0, 10),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: light,
                                ),
                              ),
                              Text(
                                state.user.name,
                                style: whiteTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 20,
                                ),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/icon_plane.png',
                          width: 24,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Text(
                      'Balance',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'IDR 280.000.000',
                      style: whiteTextStyle.copyWith(
                        fontSize: 26,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
  }
}
