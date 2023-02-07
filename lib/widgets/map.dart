import 'package:flutter/material.dart';
import 'package:good_tech_sample/config/Paletes.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class MapWidget extends StatelessWidget {
  final mapsWidgetController = GlobalKey<GoogleMapsWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Paletes.white,
      body: Center(
        child: Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.hardEdge,
          children: [
            _mapWidget(),
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(
                    color: Colors.white,
                    strokeAlign: StrokeAlign.outside,
                    width: 65,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(200),
                    border: Border.all(
                      color: Colors.white,
                      strokeAlign: StrokeAlign.outside,
                      width: 10,
                    ),
                  ),
                  child: const CircularProgressIndicator(
                    value: 0.3,
                    strokeWidth: 10,
                    backgroundColor: Paletes.blue,
                    color: Paletes.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _mapWidget() {
    return Wrap(
      children: [
        Container(
          height: 250,
          width: 250,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Paletes.white,
            borderRadius: BorderRadius.circular(200),
            border: Border.all(
              strokeAlign: StrokeAlign.outside,
              width: 1,
            ),
          ),
          child: GoogleMapsWidget(
            apiKey: "AIzaSyCLBn6OY0Z4PhHLlMGHCo-whuSpGgNQsYc",
            key: mapsWidgetController,
            sourceLatLng: const LatLng(
              40.484000837597925,
              -3.369978368282318,
            ),
            destinationLatLng: const LatLng(
              40.48017307700204,
              -3.3618026599287987,
            ),
            routeWidth: 2,
            zoomControlsEnabled: false,
            zoomGesturesEnabled: true,
            sourceMarkerIconInfo: MarkerIconInfo(
              infoWindowTitle: "This is source name",
              onTapInfoWindow: (_) {
                print("Tapped on source info window");
              },
              assetPath: "assets/images/house-marker-icon.png",
            ),
            destinationMarkerIconInfo: const MarkerIconInfo(
              assetPath: "assets/images/restaurant-marker-icon.png",
            ),
            driverMarkerIconInfo: MarkerIconInfo(
              infoWindowTitle: "Alex",
              assetPath: "assets/images/driver-marker-icon.png",
              onTapMarker: (currentLocation) {
                print("Driver is currently at $currentLocation");
              },
              assetMarkerSize: const Size.square(125),
              rotation: 90,
            ),
            onPolylineUpdate: (p) {
              print("Polyline updated: ${p.points}");
            },
            updatePolylinesOnDriverLocUpdate: true,
            // mock stream
            driverCoordinatesStream: Stream.periodic(
              const Duration(milliseconds: 500),
              (i) => LatLng(
                40.47747872288886 + i / 10000,
                -3.368043154478073 - i / 10000,
              ),
            ),
            totalTimeCallback: (time) => print(time),
            totalDistanceCallback: (distance) => print(distance),
          ),
        ),
      ],
    );
  }
}
