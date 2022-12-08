import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/custom_colors.dart';
import '../../../resources/text_styles.dart';
import '../home_controller.dart';

class BuildTime extends StatefulWidget {
  @override
  State<BuildTime> createState() => _BuildTimeState();
}

class _BuildTimeState extends State<BuildTime> {
  @override
  Widget build(BuildContext context) {

    final controller = Get.find<HomeController>();

    String twoDigits(int n) => n.toString().padLeft(2, '0');

    return Obx(() {
      controller.sHours.value = twoDigits(controller.duration.value.inHours.remainder(60));
      controller.sMinutes.value = twoDigits(controller.duration.value.inMinutes.remainder(60));
      controller.sSeconds.value = twoDigits(controller.duration.value.inSeconds.remainder(60));
      return Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: controller.duration.value.inMilliseconds / controller.totalDuration.inMilliseconds,
            backgroundColor: CustomColors.fieryRose,
            color: CustomColors.white,
            strokeWidth: 8,
          ),
          Center(
            child: Text(
                "${controller.sHours}:${controller.sMinutes}:${controller.sSeconds}",
                style: TextStyles.textStyleSFPro40()
            ),
          ),
        ],
      );
    });
  }
}
