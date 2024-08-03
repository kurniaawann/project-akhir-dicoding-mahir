import 'dart:typed_data';
import 'package:dicoding_storyapp_awal/controller/data/api/list_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddStoryController extends GetxController {
  final TextEditingController descriptionController = TextEditingController();
  final StoriesController storiesController = Get.find<StoriesController>();
  final TextEditingController latController = TextEditingController();
  final TextEditingController lonController = TextEditingController();

  RxBool isUploading = false.obs;
  RxString message = "".obs;

  Rx<LatLng?> selectedLocation = Rx<LatLng?>(null);

  Future<void> uploadStory(
    String description,
    File photo,
    double? lat,
    double? lon,
    String token,
  ) async {
    try {
      isUploading.value = true;

      final compressedImage = await compressImage(photo);

      final url = Uri.parse("https://story-api.dicoding.dev/v1/stories");
      final request = http.MultipartRequest("POST", url);

      request.headers["Authorization"] = "Bearer $token";

      request.fields["description"] = description;

      if (selectedLocation.value != null) {
        request.fields["lat"] = selectedLocation.value!.latitude.toString();
        request.fields["lon"] = selectedLocation.value!.longitude.toString();
      }

      request.files.add(
        http.MultipartFile.fromBytes(
          "photo",
          compressedImage,
          filename: photo.path.split('/').last,
        ),
      );

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode == 201) {
        message.value = "Story uploaded successfully";

        //proses upload
        storiesController.refresh();

        GoRouter.of(Get.context!).goNamed('liststory');
        Get.snackbar("Berhasil", "Berhasil Menambahkan Cerita");
      } else {
        message.value = "Error uploading story: ${response.body}";
      }
    } catch (e) {
      message.value = "Error uploading story: $e";
    } finally {
      isUploading.value = false;
    }
  }

  Future<Uint8List> compressImage(File imageFile) async {
    final image = img.decodeImage(imageFile.readAsBytesSync());
    if (image == null) {
      return imageFile.readAsBytesSync();
    }

    final compressedImage = img.encodeJpg(image, quality: 40);

    return Uint8List.fromList(compressedImage);
  }

  void setSelectedLocation(LatLng location) {
    selectedLocation.value = location;

    latController.text = location.latitude.toString();
    lonController.text = location.longitude.toString();
  }

  @override
  void dispose() {
    descriptionController.dispose();

    super.dispose();
  }
}
