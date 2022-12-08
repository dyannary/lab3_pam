import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/custom_colors.dart';
import '../../../../resources/svg_assets.dart';
import '../../home_controller.dart';

class ButtonPause extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Material(
        elevation: 0,
        type: MaterialType.circle,
        color: CustomColors.fieryRose,
        child: IconButton(
          padding: controller.buttonPause.isFalse ? const EdgeInsets.only(left: 0) : const EdgeInsets.only(left: 9),
          iconSize: 76,
          splashRadius: 36,
          onPressed: () {
            if (controller.buttonPause.isFalse) {
              controller.pauseTimer();
              controller.buttonPause(true);
            } else {
              controller.unPauseTimer();
              controller.buttonPause(false);
            }
          },
          icon: controller.buttonPause.isFalse ? SvgAssets.iconPause : SvgAssets.iconStart,
          color: CustomColors.white,
        )
    );
  }
}