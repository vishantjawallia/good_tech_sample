// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';

class OrderDetail extends StatelessWidget {
  OrderDetail({super.key});

  GoogleMapController? _controller;
  final LatLng _initialPosition = const LatLng(28.7041, 77.1025);
  Marker? _marker;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                _orderId(),
                _collectCash(),
                _tanishWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _tanishWidget() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 0.6),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Paletes.grey.withOpacity(0.3),
                    child: Icon(
                      Icons.supervised_user_circle_rounded,
                      color: Paletes.black,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Tanishi Bansal',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Rating 0.0 *',
                            style: TextStyle(
                              color: Paletes.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child: Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: Paletes.black,
                  size: 20.sp,
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.6),
              right: BorderSide(width: 0.6),
              left: BorderSide(width: 0.6),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kolkata, West Bangal',
                    style: TextStyle(
                      color: Paletes.grey,
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Delivery Time ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '2:00pm',
                        style: TextStyle(
                          color: Paletes.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.exposure_plus_1_sharp,
                    color: Paletes.blue.withOpacity(0.6),
                  ),
                  SizedBox(width: 3.w),
                  Icon(
                    Icons.phone,
                    color: Paletes.blue.withOpacity(0.6),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  _collectCash() {
    return Container(
      decoration: BoxDecoration(
        color: Paletes.green.withOpacity(0.2),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Paletes.green,
          width: 0.6,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Paletes.grey.withOpacity(0.3),
            child: Icon(Icons.money, color: Paletes.black),
          ),
          SizedBox(width: 4.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Collect cash: Rs.99',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                'Order:435634343434',
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 13,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _orderId() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 14, bottom: 14),
      child: Column(
        children: const [
          Text(
            'ORDER ID',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Paletes.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '435634343434',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Paletes.grey,
              fontWeight: FontWeight.w500,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}

//  child: Stack(
//           fit: StackFit.expand,
//           alignment: Alignment.bottomCenter,
//           children: [
//             Stack(
//               fit: StackFit.expand,
//               children: [
//                 _buildGoogleMap(),
//               ],
//             ),
//             (_mapLoading)
//                 ? Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.height,
//                     color: Colors.white,
//                     child: const Center(
//                       child: CircularProgressIndicator(),
//                     ),
//                   )
//                 : const SizedBox.shrink(),
//             Positioned(
//               width: 100.w,
//               height: 42.h,),
//             )
//           ],
//         ),
