import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "Search",
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // shape: BoxShape.circle,
            border: Border.all(color: AppColors.appBlack)),
        child: const Icon(Icons.search),
      ),
    );
  }
}
