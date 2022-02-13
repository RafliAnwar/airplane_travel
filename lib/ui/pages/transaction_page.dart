import 'package:airplane_travel/cubit/transaction_cubit.dart';
import 'package:airplane_travel/shared/theme.dart';
import 'package:airplane_travel/ui/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        print(state);
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.length == 0) {
            return Center(
              child: Text('Tidak ada transaksi'),
            );
          } else {
            return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                itemCount: state.transactions.length,
                itemBuilder: (context, index) {
                  return TransactionCard(
                    state.transactions[index],
                  );
                });
          }
        }
        return Center(
          child: Text('TransactionPage'),
        );
      },
    );
  }
}
