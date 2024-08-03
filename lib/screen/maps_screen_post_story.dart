import 'package:dicoding_storyapp_awal/controller/data/api/add_story_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' as geo;

class MapsScreen extends StatefulWidget {
  const MapsScreen({Key? key}) : super(key: key);

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  LatLng kordinatAwal = const LatLng(-6.8957473, 107.6337669);
  late GoogleMapController mapController;
  late final Set<Marker> markers = {};
  geo.Placemark? placemark;

  @override
  void initState() {
    super.initState();
    markers.add(
      Marker(
        markerId: const MarkerId("Alamat Saya"),
        position: kordinatAwal,
        onTap: () {
          mapController.animateCamera(
            CameraUpdate.newLatLngZoom(kordinatAwal, 18),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              target: kordinatAwal,
              zoom: 18,
            ),
            onMapCreated: (controller) async {
              final info = await geo.placemarkFromCoordinates(
                  kordinatAwal.latitude, kordinatAwal.longitude);
              final place = info[0];
              final street = place.street!;
              final address =
                  '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
              setState(() {
                placemark = place;
              });
              defineMarker(kordinatAwal, street, address);

              setState(() {
                mapController = controller;
              });
            },
            markers: markers,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            onLongPress: (LatLng latLng) => onLongPressGoogleMap(latLng),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Column(
              children: [
                FloatingActionButton.small(
                  onPressed: () {
                    onMyLocationButtonPress();
                  },
                  child: const Icon(Icons.my_location),
                ),
                FloatingActionButton.small(
                  heroTag: "zoom-in",
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.zoomIn(),
                    );
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton.small(
                  heroTag: "zoom-out",
                  onPressed: () {
                    mapController.animateCamera(
                      CameraUpdate.zoomOut(),
                    );
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void defineMarker(LatLng latLng, String street, String address) {
    final marker = Marker(
        markerId: const MarkerId("Alamat Saya"),
        position: latLng,
        infoWindow: InfoWindow(title: street, snippet: address));
    setState(() {
      markers.clear();
      markers.add(marker);
    });
  }

  void onMyLocationButtonPress() async {
    final Location location = Location();
    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    late LocationData locationData;
    locationData = await location.getLocation();
    final latLng = LatLng(locationData.latitude!, locationData.longitude!);

    final info =
        await geo.placemarkFromCoordinates(latLng.latitude, latLng.longitude);
    final place = info[0];
    final street = place.street;
    final address =
        '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {
      placemark = place;
    });
    defineMarker(latLng, street!, address);

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    mapController.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }

  void onLongPressGoogleMap(LatLng latLng) async {
    final info =
        await geo.placemarkFromCoordinates(latLng.latitude, latLng.longitude);

    final place = info[0];
    final street = place.street!;
    final address =
        '${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

    setState(() {
      kordinatAwal = latLng;
    });

    AddStoryController addStoryController = Get.find();
    addStoryController.setSelectedLocation(latLng);

    defineMarker(latLng, street, address);
    mapController.animateCamera(
      CameraUpdate.newLatLng(latLng),
    );
  }
}
