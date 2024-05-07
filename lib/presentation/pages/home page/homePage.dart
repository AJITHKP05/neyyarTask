import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neyyar_test/presentation/pages/home%20page/widgets/searchButton.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'widgets/leadingIcon.dart';
import 'widgets/profileAvatar.dart';
import 'widgets/titleDropdown.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: const LeadingIcon(),
        title: const TitleDropdown(),
        actions: [
          const SearchButton(),
          SizedBox(
            width: 20.sp,
          ),
          const ProfileAvatar(),
          SizedBox(
            width: 20.sp,
          )
        ],
      ),
    );
  }
}
