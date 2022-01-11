import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/data.dart';
import 'package:my_wallet_app_ui/widgets/cardSection.dart';
import 'package:my_wallet_app_ui/widgets/expenses.dart';
import 'package:my_wallet_app_ui/widgets/header.dart';

void main(){
  runApp(MaterialApp(
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Container(height: 120, child: const WalletHeader()),
          const Expanded(child: CardSection()),
          const Expanded(child: ExpenseSection())
        ],
      ),
    );
  }
}
