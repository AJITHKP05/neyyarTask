import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/constants/app_colors.dart';

class HeaderText extends StatelessWidget {
  final String title;
  const HeaderText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const VerticalDivider(
              color: AppColors.appOrange,
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  // shape: BoxShape.circle,
                  border: Border.all(color: AppColors.appBlack)),
              child: Icon(
                Icons.arrow_forward,
                size: 15.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
