import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // open drawer
      },
      child: Stack(children: [
        Container(
          height: 40,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.appOrange,
          ),
        ),
        Center(
          child: Container(
            height: 30,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 162, 91, 5),
              shape: BoxShape.circle,
            ),
          ),
        ),
        const Center(
            child: Icon(
          Icons.menu,
          color: AppColors.appWhite,
        ))
      ]),
    );
  }
}
