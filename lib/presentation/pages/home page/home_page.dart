import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neyyar_test/core/controller/home_controller.dart';
import 'package:neyyar_test/presentation/pages/home%20page/widgets/search_button.dart';

import '../../common widgets/banner_widget.dart';
import '../../common widgets/course_list.dart';
import '../../common widgets/profile_avatar.dart';
import 'widgets/category_widget.dart';
import 'widgets/header_text.dart';
import 'widgets/leading_icon.dart';
import 'widgets/title_dropdown.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = Get.put(HomeController());
  @override
  void initState() {
    controller.fetchData();
    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int curent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: Center(child: Text("Drawer for flutter")),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (value) {
              controller.currentIndex.value = value;
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.live_tv_rounded),
                label: 'Live class',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active),
                label: 'Notification',
              ),
            ],
          )),
      appBar: AppBar(
        elevation: 5,
        leading: LeadingIcon(ontap: () {
          _key.currentState!.openDrawer();
        }),
        title: const TitleDropdown(),
        actions: const [
          SearchButton(),
          SizedBox(
            width: 10,
          ),
          ProfileAvatar(),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.fetchData();
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: BannerWidget()),
            const SliverToBoxAdapter(
                child: HeaderText(
              title: "Categories",
            )),
            const SliverToBoxAdapter(
              child: CategoryWidget(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            const SliverToBoxAdapter(
                child: HeaderText(
              title: "My Courses",
            )),
            CourseList()
          ],
        ),
      ),
    );
  }
}
