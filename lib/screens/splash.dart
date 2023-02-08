import 'package:flutter/material.dart';
import 'package:good_tech_sample/screens/Home.dart';
import 'package:good_tech_sample/screens/order_detail.dart';
import 'package:good_tech_sample/screens/trip_summary.dart';
import 'package:sizer/sizer.dart';

import '../config/Paletes.dart';

class Spalsh extends StatelessWidget {
  const Spalsh({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w400)),
                    backgroundColor: MaterialStateProperty.all(Paletes.blue),
                  ),
                  child: const Text(
                    'Home Screen',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail()));
                  },
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w400)),
                    backgroundColor: MaterialStateProperty.all(Paletes.red),
                  ),
                  child: const Text(
                    'Order Detail',
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TripSummary()));
              },
              style: ButtonStyle(
                alignment: Alignment.center,
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w400)),
                backgroundColor: MaterialStateProperty.all(Paletes.green),
              ),
              child: const Text(
                ' Sumnmary',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 40)
          ],
        ),
      ),
    );
  }
}
