import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:neyyar_test/core/constants/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/controller/home_controller.dart';

class BannerWidget extends StatelessWidget {
  BannerWidget({super.key});

  HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CarouselSlider(
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    controller.imageIndex.value = index;
                  },
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  // height: 220,
                  initialPage: 0,
                  autoPlay: false,
                  // enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  reverse: false),
              // widgets

              items: controller.assetImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
          ),
        ),
        Positioned(bottom: 20.sp, child: indicator())
      ],
    );
  }

  Widget indicator() {
    return Container(
        alignment: Alignment.center,
        height: 8,
        margin: const EdgeInsets.only(bottom: 12),
        width: 144,
        child: ListView.builder(
          itemCount: controller.assetImages.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Obx(() {
              return Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.symmetric(horizontal: 1.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (AppColors.appWhite).withOpacity(
                        controller.imageIndex.value == index ? 1 : 0.6)),
              );
            });
          },
        ));
  }
}
