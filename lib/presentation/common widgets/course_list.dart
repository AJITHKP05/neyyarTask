import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neyyar_test/presentation/common%20widgets/course_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/controller/home_controller.dart';

class CourseList extends StatelessWidget {
  CourseList({super.key});
  HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => SliverPadding(
          padding: const EdgeInsets.only(left: 20),
          sliver: controller.isLoading.value
              ? const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()))
              : SliverToBoxAdapter(
                  child: SizedBox(
                    height: 80.sp,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: controller.courses.map((item) {
                        return CourseCard(
                          data: item,
                        );
                      }).toList(),
                    ),
                  ),
                ),
        ));
  }
}
