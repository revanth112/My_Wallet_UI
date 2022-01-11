import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/data.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(alignment: Alignment.topLeft,
          child: Container(
              width: 200,
              child: Image.asset('images/mastercardlogo.png')
          ),
        ),
        Align(alignment: Alignment.bottomRight,
          child: Padding(padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 60,
              width: 70,
              decoration: BoxDecoration(color: primaryColor,boxShadow: customShadow,borderRadius: BorderRadius.circular(15.0)),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.white10 ,boxShadow: customShadow,borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 30.0,left: 10.0,right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Text("**** **** ****",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    Text('1930',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text("PLATINUM CARD",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
