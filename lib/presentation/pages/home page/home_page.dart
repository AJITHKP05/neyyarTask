import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neyyar_test/core/constants/app_colors.dart';
import 'package:neyyar_test/core/controller/home_controller.dart';
import 'package:neyyar_test/presentation/pages/home%20page/widgets/search_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'widgets/banner_widget.dart';
import 'widgets/header_text.dart';
import 'widgets/leading_icon.dart';
import 'widgets/profile_avatar.dart';
import 'widgets/title_dropdown.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController controller = Get.put(HomeController());
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
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: BannerWidget()),
          const SliverToBoxAdapter(
              child: HeaderText(
            title: "Categories",
          ))
        ],
      ),
    );
  }
}
