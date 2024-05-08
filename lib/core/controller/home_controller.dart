import 'dart:math';
import 'package:get/get.dart';
import 'package:neyyar_test/core/constants/app_colors.dart';
import 'package:neyyar_test/core/repository/home_repository.dart';

class HomeController extends GetxController {
  final repo = Get.put<HomeRepository>(HomeRepository());
  List<String> assetImages = [
    "assets/bannerImages/1.jpg",
    "assets/bannerImages/2.jpg",
    "assets/bannerImages/3.jpg"
  ];
  final isLoading = false.obs;
  RxInt imageIndex = 0.obs;
  final currentIndex = 0.obs;
  List courses = [];
  int getRandonNumber() => Random().nextInt(4);
  void fetchData() async {
    isLoading.value = true;
    try {
      courses = await repo.getData();
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        "Error",
        "Pull down page to retry",
        snackPosition: SnackPosition.BOTTOM,
        colorText: AppColors.appWhite,
        borderRadius: 10,
        backgroundColor: AppColors.appOrange,
      );
    }
  }
}
