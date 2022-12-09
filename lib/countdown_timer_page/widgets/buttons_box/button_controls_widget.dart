import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../countdown_timer_page_controller.dart';
import 'button_pause.dart';
import 'button_repeat.dart';
import 'button_start.dart';
import 'button_stop.dart';

class _ButtonControlWidgetState extends State<ButtonControlWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CountdownTimerController>();
    return Obx(() {
      if(controller.isTimerRunning()
          || !controller.isCompleted()
      ) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.buttonPause.isTrue && controller.buttonState.isTrue) ButtonStop(),
            if (controller.buttonPause.isTrue && controller.buttonState.isTrue) const SizedBox(width: 8),
            ButtonPause(),
            if (controller.buttonPause.isTrue && controller.buttonState.isTrue) const SizedBox(width: 8),
            if (controller.buttonPause.isTrue && controller.buttonState.isTrue) ButtonRepeat(),
          ],
        );
      }
      else {
        return ButtonStart();
      }
    });
  }
}

class ButtonControlWidget extends StatefulWidget {
  @override
  State<ButtonControlWidget> createState() => _ButtonControlWidgetState();
}