import 'package:flutter/material.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:good_tech_sample/widgets/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class Home extends StatelessWidget {
  Home({super.key});

  GoogleMapController? _controller;
  final LatLng _initialPosition = const LatLng(28.7041, 77.1025);
  Marker? _marker;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              upperButton(),
              _buildGoogleMap(),
              _distanceBox(),
              _pickUpFrom(),
              _userName(),
              _swiperBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Container _swiperBtn() {
    return Container(
              height: 58,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Paletes.green,
                borderRadius: BorderRadius.circular(60),
              ),
              child: SwipingButton(
                text: "Accept Order",
                swipeButtonColor: Paletes.white,
                iconColor: Paletes.black,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                swipePercentageNeeded: 0.8,
                onSwipeCallback: () {
                  print("Called back");
                },
                height: 40,
                buttonTextStyle: const TextStyle(fontWeight: FontWeight.w400),
                backgroundColor: Paletes.green,

                // width: 80,
              ),
            );
  }

  _pickUpFrom() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 0.7,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pickup from',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Paletes.black.withOpacity(0.6),
              fontSize: 12,
            ),
          ),
          const Text(
            'Sindhi Restaurant',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 0.2),
          const Text(
            'Kolkata, West Bengal',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Paletes.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.history,
                color: Paletes.grey,
                size: 12.sp,
              ),
              SizedBox(width: 2.w),
              const Text(
                '0 mins, away',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _userName() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 0.7,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sindhi Restaurant',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 0.2),
          const Text(
            'Kolkata, West Bengal',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Paletes.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.history,
                color: Paletes.grey,
                size: 12.sp,
              ),
              SizedBox(width: 2.w),
              const Text(
                '0 mins, away',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Paletes.grey,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _distanceBox() {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                    ),
                    border: Border.all(width: 0.6),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Top Distance',
                        style: TextStyle(color: Paletes.grey),
                      ),
                      Text(
                        '6km',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(width: 0.6),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Expected Earning',
                        style: TextStyle(color: Paletes.grey),
                      ),
                      Text(
                        'Rs. 50 ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                    ),
                    border: Border.all(width: 0.6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Pickup: ',
                        style: TextStyle(color: Paletes.grey),
                      ),
                      Text(
                        '6km',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(6),
                    ),
                    border: Border.all(width: 0.6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Drop: ',
                        style: TextStyle(color: Paletes.grey),
                      ),
                      Text(
                        '6km',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /* --------------- // build google maps to used inside widget --------------- */

  Widget _buildGoogleMap() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 32.h,
          child: MapWidget(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 22),
          child: Text(
            'New Order !',
            style: TextStyle(
              color: Paletes.black,
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),
        )
      ],
    );
  }

  _addMarker(double lat, double lng) {
    LatLng position = LatLng(lat, lng);

    _marker = Marker(
      markerId: const MarkerId('marker1'),
      position: position,
      icon: BitmapDescriptor.defaultMarker,
    );

    CameraUpdate u2 = CameraUpdate.newCameraPosition(CameraPosition(target: position, zoom: 4.9));

    _controller!.moveCamera(u2).then((void v) async {
      await _check(u2, _controller!);
    });
  }

  _check(CameraUpdate u, GoogleMapController c) async {
    c.moveCamera(u);
    _controller!.moveCamera(u);
    LatLngBounds l1 = await c.getVisibleRegion();
    LatLngBounds l2 = await c.getVisibleRegion();

    if (l1.southwest.latitude == -90 || l2.southwest.latitude == -90) await _check(u, c);
  }

  /* --------------------------------------------------- upperButton -------------------------------------------------- */
  Container upperButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 28,
        width: 84,
        child: ElevatedButton(
          onPressed: () => null,
          style: ButtonStyle(
            alignment: Alignment.center,
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w400)),
            backgroundColor: MaterialStateProperty.all(Paletes.red),
          ),
          child: const Text(
            'Forword',
            textAlign: TextAlign.center,
          ),
        ),
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
