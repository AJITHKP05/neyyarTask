import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> assetImages = [
    "assets/bannerImages/1.jpg",
    "assets/bannerImages/2.jpg",
    "assets/bannerImages/3.jpg"
  ];
  RxInt imageIndex = 0.obs;
}
