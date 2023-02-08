import 'package:flutter/material.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:sizer/sizer.dart';

class TripSummary extends StatelessWidget {
  const TripSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              _smileWidget(),
              _dropDistance(),

              Align(
                heightFactor: 2.4.sp,
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 92.w,
                  height: 6.5.h,
                  child: ElevatedButton(
                    onPressed: () => null,
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      alignment: Alignment.center,
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text(
                      'Get next order',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Paletes.white,
                      ),
                    ),
                  ),
                ),
              ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Container _dropDistance() {
    return Container(
      height: 5.h,
      width: 92.w,
      margin: EdgeInsets.symmetric(vertical: 45.sp),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 0.6),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: const [
                  Text(
                    'Drop Distance: ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Paletes.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '6km',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: const VerticalDivider(
                color: Colors.black,
                width: 0.6,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: const [
                Text(
                  'Time: ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Paletes.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '50mins',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _smileWidget() {
    return Container(
      padding: EdgeInsets.only(top: 20.h),
      width: 100.w,
      decoration: BoxDecoration(
        color: Paletes.blue.withOpacity(0.24),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(150),
          bottomLeft: Radius.circular(150),
        ),
      ),
      child: SizedBox(
        height: 35.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.abc_rounded),
              const Text(
                'Good Job ! You did a perfect trip',
                style: TextStyle(
                  color: Paletes.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Icon(Icons.abc_rounded),
              SizedBox(
                height: 22.sp,
                child: ElevatedButton(
                  onPressed: () => null,
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(color: Colors.green, width: 1.5),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Known More',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Paletes.green,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
