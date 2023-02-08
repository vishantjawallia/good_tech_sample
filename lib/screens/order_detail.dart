// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:good_tech_sample/widgets/SwipeButtom.dart';
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
                _orderDetail(),
                _itemTotal(),
                _grandTotal(),
                _bottomDetail(),
                SwipeButtom(
                  margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 2),
                  name: 'Accept Order',
                  onSwipeCallback: () => null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _bottomDetail() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Number',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 0.3.h),
              Text(
                '43567999',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 0.3.h),
              Text(
                'Paid: Using Upi',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 0.3.h),
              Text(
                'April 26 ,2023 at 5:30 pm',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Phone Number',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 0.3.h),
              Text(
                '8054738366',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Call Confirmation',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 0.3.h),
              Text(
                'Yes',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 6),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'order Type',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 0.3.h),
              Text(
                'Delivery',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _grandTotal() {
    return Container(
      height: 13.h,
      padding: EdgeInsets.only(top: 10, bottom: 4),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Grand Total',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Text(
                'Rs. 430',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Paletes.blue.withOpacity(0.3),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Donates rs2 to feeding India',
                  style: TextStyle(
                    fontSize: 12,
                    color: Paletes.blue,
                  ),
                ),
                Text(
                  'Rs.14',
                  style: TextStyle(
                    fontSize: 12,
                    color: Paletes.blue,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Order Detail',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _itemTotal() {
    return Container(
      height: 15.h,
      padding: EdgeInsets.only(top: 10, bottom: 4),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Item Total',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Text(
                'Rs. 430',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Couplen(WELCOME)',
                style: TextStyle(
                  fontSize: 15,
                  color: Paletes.blue,
                ),
              ),
              Text(
                'You saved Rs.60',
                style: TextStyle(
                  fontSize: 15,
                  color: Paletes.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Taxes',
                style: TextStyle(
                  fontSize: 13,
                  color: Paletes.grey,
                ),
              ),
              Text(
                'Rs.30',
                style: TextStyle(
                  fontSize: 13,
                  color: Paletes.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Delivery  Charge',
                style: TextStyle(
                  fontSize: 13,
                  color: Paletes.grey,
                ),
              ),
              Text(
                'Free',
                style: TextStyle(
                  fontSize: 13,
                  color: Paletes.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Donates rs2 to feeding India',
                style: TextStyle(
                  fontSize: 13,
                  color: Paletes.grey,
                ),
              ),
              Text(
                'Rs.30',
                style: TextStyle(
                  fontSize: 13,
                  color: Paletes.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _orderDetail() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 4),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Order Details',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 6, top: 4),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.vertical_align_bottom),
                  SizedBox(width: 1.w),
                  Text(
                    'Butter Vada Pav',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Paletes.greyDark,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.vertical_align_bottom),
                      SizedBox(width: 1.w),
                      Text(
                        'X Rs.30',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Paletes.greyDark,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Rs.30',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Paletes.greyDark,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 6, top: 4),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.vertical_align_bottom),
                  SizedBox(width: 1.w),
                  Text(
                    'Butter Vada Pav',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Paletes.greyDark,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.vertical_align_bottom),
                      SizedBox(width: 1.w),
                      Text(
                        'X Rs.30',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Paletes.greyDark,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Rs.30',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Paletes.greyDark,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
                'Order: 435634343434',
                style: TextStyle(
                  color: Paletes.greyDark,
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
              color: Paletes.greyDark,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '435634343434',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Paletes.greyDark,
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
