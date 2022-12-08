import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/custom_colors.dart';
import '../../../../resources/svg_assets.dart';
import '../../home_controller.dart';

class ButtonStop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Material(
        elevation: 0,
        type: MaterialType.circle,
        color: CustomColors.awesome,
        child: IconButton(
          padding: const EdgeInsets.only(left: 0),
          iconSize: 76,
          splashRadius: 36,
          onPressed: () {
            controller.buttonState(false);
            controller.buttonPause(false);
            controller.stopTimer();
          },
          icon: SvgAssets.iconStop,
          color: CustomColors.white,
        )
    );
  }
}