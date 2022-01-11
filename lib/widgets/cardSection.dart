import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/data.dart';

import 'cardDetails.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: const Text("Selected Card", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16))),
        Expanded(child: ListView.builder(
            scrollDirection:Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context,i){
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            decoration: BoxDecoration(color: primaryColor, boxShadow: customShadow, borderRadius: BorderRadius.circular(20)),
            child: Stack(children: <Widget>[
              Positioned.fill(
                  top: -400,
                  right: -335,
                  bottom: 45,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: customShadow,shape: BoxShape.circle,color: Colors.transparent, border: Border.all(width:3,color: Colors.white60)),
                  )),
              Positioned.fill(
                  top: 70,
                  right: -35,
                  bottom: -170,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: customShadow,shape: BoxShape.circle,color: Colors.white30),
                  )),
              Positioned.fill(
                  left: -300,
                  top: -100,
                  bottom: -100,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: customShadow,shape: BoxShape.circle,color: Colors.white30),
                  )),
              const CardDetails(),
            ],
            ),
          );
        }))
      ],
    );
  }
}
