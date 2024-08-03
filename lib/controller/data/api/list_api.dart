import 'package:dicoding_storyapp_awal/controller/data/api/login_api.dart';
import 'package:dicoding_storyapp_awal/model/model_list_story.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StoriesController extends GetxController {
  final LoginControllerApi loginController = Get.find<LoginControllerApi>();
  RxList<ListStories> stories = <ListStories>[].obs;
  RxBool isLoading = false.obs;
  RxBool isEndOfList = false.obs;
  RxInt currentPage = 1.obs;

  @override
  void onInit() {
    fetchStories();

    super.onInit();
  }

  @override
  void refresh() {
    // Membersihkan daftar yang sudah ada
    stories.clear();

    // Mengatur ulang variabel
    isLoading.value = false;
    isEndOfList.value = false;
    currentPage.value = 1;

    // Mengambil data baru
    fetchStories();
  }

  Future<void> fetchStories({int? page, int? size, int location = 0}) async {
    try {
      if (isLoading.value || isEndOfList.value) {
        return;
      }

      isLoading(true);

      final String? token = await loginController.getToken();

      if (token != null) {
        final url = Uri.parse(
            'https://story-api.dicoding.dev/v1/stories?page=${page ?? currentPage.value}');
        final response = await http.get(
          url,
          headers: {
            'Authorization': 'Bearer $token',
          },
        );

        if (response.statusCode == 200) {
          final dynamic jsonBody = json.decode(response.body);

          if (jsonBody['listStory'] is List) {
            List<ListStories> newList =
                List.generate(jsonBody['listStory'].length, (index) {
              return ListStories.fromJson(jsonBody['listStory'][index]);
            });

            if (newList.isEmpty) {
              isEndOfList(true);
            } else {
              stories.addAll(newList);
              currentPage.value++;
            }
          }
        }
      }
    } catch (e) {
      Get.snackbar("Terjadi Kesalahan",
          "Silahkan Intruksi Yang Di Berikan Atau Hubungi Customer Services");
    } finally {
      isLoading(false);
    }
  }
}
