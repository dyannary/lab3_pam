import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/custom_colors.dart';
import '../../../../resources/svg_assets.dart';
import '../../home_controller.dart';

class ButtonStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Material(
        elevation: 0,
        type: MaterialType.circle,
        color: CustomColors.fieryRose,
        child: IconButton(
          padding: const EdgeInsets.only(left: 9),
          iconSize: 76,
          splashRadius: 36,
          onPressed: () {
            if (controller.buttonState.isFalse
                && (controller.hours > 0 || controller.minutes > 0 || controller.seconds > 0)
            ) {
              controller.changeButtonSate();
              controller.startTimer();
            }
          },
          icon: SvgAssets.iconStart,
          color: CustomColors.white,
        )
    );
  }
}