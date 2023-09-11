import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition kGooglePlex = CameraPosition(
    target: sourceLocation,
    zoom: 14.4746,
  );

  static const LatLng sourceLocation = LatLng(32.35136807925104, 50.90071888628878);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      //  mapType: MapType.hybrid,
      initialCameraPosition: kGooglePlex,

     onMapCreated: (mapController) {
  },

  
      markers: <Marker>{
        const Marker(
          markerId: MarkerId("1"),
          position: sourceLocation,
          infoWindow: InfoWindow(title: "نمایندی کالی ایران"),
        ),
        const Marker(
          markerId: MarkerId("destination"),
          position: destination,
        ),
      },
    );
  }

  }


