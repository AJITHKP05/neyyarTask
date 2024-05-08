import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/constants/app_colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 26.sp,
            child: ListView(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                customChip("Competitive Exam"),
                customChip("Kerala PSC"),
                customChip("Bank Exam"),
                customChip("Supportive Exam"),
                customChip("Competitive Exam"),
                customChip("Kerala PSC"),
                customChip("Bank Exam"),
                customChip("Supportive Exam"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 26.sp,
            child: ListView(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                customChip("Banking", icon: Icons.account_balance),
                customChip("KIT Softwares", icon: Icons.computer),
                customChip("Musical", icon: Icons.museum_outlined),
                customChip("Supportive Exam"),
                customChip("Banking", icon: Icons.account_balance),
                customChip("KIT Softwares", icon: Icons.computer),
                customChip("Musical", icon: Icons.museum_outlined),
                customChip("Supportive "),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget customChip(String title, {IconData? icon}) {
  return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(right: 5),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // shape: BoxShape.circle,
          border: Border.all(color: AppColors.appBlack)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon ?? Icons.description_rounded,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ));
}
