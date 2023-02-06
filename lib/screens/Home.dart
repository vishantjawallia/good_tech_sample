import 'package:flutter/material.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';

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
              // _distanceBox(),
              _pickUpFrom(),
              _userName(),
            ],
          ),
        ),
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

  Container _distanceBox() {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(18),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.92,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          mainAxisExtent: 40.sp,
        ),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: index.isEven
                  ? const BorderRadius.only(
                      topLeft: Radius.zero,
                      bottomLeft: Radius.zero,
                    )
                  : const BorderRadius.only(
                      topRight: Radius.zero,
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.zero,
                      topLeft: Radius.zero,
                    ),
              border: index.isEven
                  ? const Border(
                      bottom: BorderSide(width: 0.6),
                      top: BorderSide(width: 0.6),
                      right: BorderSide(width: 0.6),
                      left: BorderSide(width: 0.6),
                    )
                  : const Border(
                      bottom: BorderSide(width: 0.6),
                      top: BorderSide(width: 0.6),
                      right: BorderSide(width: 0.6),
                    ),
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
          );
        },
      ),
    );
  }

  /* --------------- // build google maps to used inside widget --------------- */

  Widget _buildGoogleMap() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.h,
          child: GoogleMap(
            mapType: MapType.normal,
            trafficEnabled: false,
            compassEnabled: true,
            rotateGesturesEnabled: true,
            scrollGesturesEnabled: false,
            tiltGesturesEnabled: true,
            zoomControlsEnabled: false,
            zoomGesturesEnabled: true,
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            mapToolbarEnabled: true,
            markers: Set.of((_marker != null) ? [_marker!] : []),
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 14,
            ),
            onMapCreated: (GoogleMapController controller) async {
              _controller = controller;
              await _addMarker(28.7041, 77.1025);
            },
            onTap: (position) {
              // Common.buildErrorSnackbar(context, "You can't select loaction through map ?");
            },
            // circles: circles,
          ),
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
