import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/custom_colors.dart';
import '../../../../resources/svg_assets.dart';
import '../../countdown_timer_page_controller.dart';

class ButtonRepeat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CountdownTimerController>();

    return Material(
        elevation: 0,
        type: MaterialType.circle,
        color: CustomColors.awesome,
        child: IconButton(
          padding: const EdgeInsets.only(left: 0),
          iconSize: 76,
          splashRadius: 36,
          onPressed: () {
            controller.repeatTimer();
            controller.buttonPause(false);
            controller.unPauseTimer();
          },
          icon: SvgAssets.iconRepeat
          ,
          color: CustomColors.white,
        )
    );
  }
}