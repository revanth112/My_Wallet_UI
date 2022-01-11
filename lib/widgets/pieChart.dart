import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_wallet_app_ui/data.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(boxShadow: customShadow,shape: BoxShape.circle,color: primaryColor),
        child: Stack(
          children: <Widget>[
            CustomPaint(
              child: Container(),
              foregroundPainter: PieChartPainter(),),
            Center(
              child: Container(
                height: 90,
                width: 90,
                child: const Center(child: Text("\$1234",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(boxShadow: customShadow,shape: BoxShape.circle,color: primaryColor),
            ))
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width/2,size.height/2);
    double radius = min(size.width/3,size.height/3);

    var paint = Paint()..style = PaintingStyle.stroke..strokeWidth = 50;

    double total = 0;
    for (var element in expenses) {
      total += element['amount'];
    }

    var startRadian = -pi/2;
    for(int i=0;i<expenses.length;i++){
      var currentExpenses =expenses[i];
      var sweepRadian = (currentExpenses['amount']/total)*2*pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
