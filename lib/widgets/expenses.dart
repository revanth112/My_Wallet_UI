import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/data.dart';
import 'package:my_wallet_app_ui/widgets/pieChart.dart';

class ExpenseSection extends StatelessWidget {
  const ExpenseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: const Text("Monthly Expenses",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(boxShadow: customShadow,color: primaryColor,borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(boxShadow: customShadow,color: primaryColor,borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.arrow_forward_ios_rounded ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses.map((value) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(radius: 5,backgroundColor: pieColors[expenses.indexOf(value)],),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text(value['name'],style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                  )).toList(),
                ),
              ),
            ),
            const Expanded(
              flex: 6,
              child: PieChart(),
            )
          ],
        ),
      ],
    );
  }
}
