import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/controller/home_controller.dart';

class CustomBottomNav extends StatelessWidget {
  CustomBottomNav({super.key});

  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (value) {
            controller.currentIndex.value = value;
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              tooltip: "Home",
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.live_tv_rounded),
                label: 'Live class',
                tooltip: 'Live class'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active),
                label: 'Notification',
                tooltip: 'Notification'),
          ],
        ));
  }
}
