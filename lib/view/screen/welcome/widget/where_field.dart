import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotel_booking_app/utils/app_color.dart';

class WhereField extends StatefulWidget {
  const WhereField({
    super.key,
    required this.whereController,
  });
  final TextEditingController whereController;

  @override
  State<WhereField> createState() => _WhereFieldState();
}

class _WhereFieldState extends State<WhereField> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  LatLng myCurrentLocation = const LatLng(23.873751, 90.396454);

  final List<Marker> _marker = [];
  final List<Marker> _list = [
    const Marker(
      markerId: MarkerId('1'),
      position: LatLng(23.873751, 90.396454),
      infoWindow: InfoWindow(title: "My Location"),
    ),
  ];
  @override
  void initState() {
    _marker.addAll(_list);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.whereController,
      decoration: InputDecoration(
        prefixIcon: IconButton(
          onPressed: () {
            Get.dialog(
              AlertDialog(
                content: SizedBox(
                  height: Get.height*0.6,
                  child: GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target: myCurrentLocation, zoom: 14.4746),
                    mapType: MapType.normal,
                    markers: Set<Marker>.of(_marker),
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
              ),
            );
          },
          icon: const Icon(
            Icons.location_on_outlined,
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.primaryColor),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
