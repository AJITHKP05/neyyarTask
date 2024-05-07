import 'package:flutter/material.dart';

import '../../../../core/constants/appColors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // shape: BoxShape.circle,
          border: Border.all(color: AppColors.appBlack)),
      child: Icon(Icons.search),
    );
  }
}
