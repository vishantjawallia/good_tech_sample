import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:good_tech_sample/screens/home.dart';
import 'package:good_tech_sample/screens/order_detail.dart';
import 'package:good_tech_sample/screens/splash.dart';
import 'package:good_tech_sample/screens/trip_summary.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Good Tech Sample',
          theme: ThemeData(
            scaffoldBackgroundColor: Paletes.white,
            primarySwatch: Colors.blue,
          ),
          initialRoute: 'splash',
          routes: {
            'splash': (context) => const Spalsh(),
            '/': (context) => Home(),
            'order_detail': (context) => OrderDetail(),
            'trip_summary': (context) => const TripSummary(),
          },
        );
      },
    );
  }
}
