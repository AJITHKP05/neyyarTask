import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:neyyar_test/core/constants/app_colors.dart';
import 'package:neyyar_test/presentation/models/course.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:star_rating/star_rating.dart';

import '../../core/controller/home_controller.dart';

class CourseCard extends StatelessWidget {
  CourseCard({super.key, required this.data});
  final Course data;

  HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    int random = controller.getRandonNumber();
    return Tooltip(
      message: "Go to course page",
      child: Container(
        // color: Colors.amber,
        margin: const EdgeInsets.only(right: 10),
        width: 70.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/courseImages/$random.jpeg",
                height: 50.sp,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 0),
                height: 15.sp,
                child: ListTile(
                  // tileColor: Colors.amber,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: LinearProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColors.appOrange),
                    value: double.tryParse(
                        ((data.percentage ?? 1) / 100).toString()),
                  ),
                  trailing: Text(("${data.percentage}%")),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Wrap(
                children: [
                  data.isPremium != null
                      ? data.isPremium!
                          ? Container(
                              margin: const EdgeInsets.all(8),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  color: AppColors.appPremium,
                                  border:
                                      Border.all(color: AppColors.appPremium)),
                              child: const Text(
                                "Premium",
                                style: TextStyle(color: AppColors.appWhite),
                              ),
                            )
                          : const SizedBox()
                      : const SizedBox(),
                  data.isLive != null
                      ? data.isLive!
                          ? Container(
                              margin: const EdgeInsets.all(8),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  color: AppColors.appDarkRed,
                                  border:
                                      Border.all(color: AppColors.appDarkRed)),
                              child: const Text(
                                "Live",
                                style: TextStyle(color: AppColors.appWhite),
                              ),
                            )
                          : const SizedBox()
                      : const SizedBox(),
                ],
              ),
            ),
            ListTile(
              title: Text(data.courseName ?? ""),
              subtitle: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(data.rating.toString()),
                  ),
                  StarRating(
                    color: AppColors.appOrange,
                    mainAxisAlignment: MainAxisAlignment.center,
                    length: 5,
                    rating: double.tryParse(data.rating.toString()) ?? 0,
                    between: 2,
                    // starSize: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text("(${data.totalReview})"),
                  )
                ],
              ),
              contentPadding: EdgeInsets.only(top: 8),
            )
          ],
        ),
      ),
    );
  }
}
