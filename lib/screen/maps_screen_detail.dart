import 'package:dicoding_storyapp_awal/controller/data/api/detail_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart' as geo;

class MapsDetailPage extends StatefulWidget {
  const MapsDetailPage({super.key});

  @override
  State<MapsDetailPage> createState() => _MapsDetailPageState();
}

class _MapsDetailPageState extends State<MapsDetailPage> {
  geo.Placemark? placemark;
  final StoryDetailController storyApiC = Get.find();

  @override
  Widget build(BuildContext context) {
    final detailStory = storyApiC.detailStory.value;
    final story = detailStory.story;
    return Center(
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(story.lat!, story.lon!),
          zoom: 15,
        ),
        markers: <Marker>{
          Marker(
            markerId: const MarkerId("StoryLocation"),
            position: LatLng(story.lat!, story.lon!),
            onTap: () {
              _onMarkerTapped(story.lat!, story.lon!);
            },
          ),
        },
      ),
    );
  }

  void _onMarkerTapped(double lat, double lon) async {
    List<geo.Placemark> placemarks =
        await geo.placemarkFromCoordinates(lat, lon);

    if (placemarks.isNotEmpty) {
      geo.Placemark selectedPlace = placemarks.first;

      // Tampilkan alamat dalam dialog
      Get.defaultDialog(
        title: "Alamat",
        middleText: _buildAddressText(selectedPlace),
        confirm: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("OK"),
        ),
      );
    }
  }

  String _buildAddressText(geo.Placemark placemark) {
    // Membangun teks alamat dengan lebih lengkap
    String address = "";
    if (placemark.subLocality != null) {
      address += "${placemark.subLocality}, ";
    }
    if (placemark.locality != null) {
      address += "${placemark.locality}, ";
    }
    if (placemark.administrativeArea != null) {
      address += "${placemark.administrativeArea}, ";
    }
    if (placemark.postalCode != null) {
      address += "${placemark.postalCode}, ";
    }
    if (placemark.country != null) {
      address += placemark.country!;
    }

    return address.isNotEmpty ? address : "Alamat tidak ditemukan";
  }
}
