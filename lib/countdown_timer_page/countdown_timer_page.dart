import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_lab3/countdown_timer_page/widgets/build_time.dart';
import 'package:pam_lab3/countdown_timer_page/widgets/buttons_box/button_controls_widget.dart';
import 'package:pam_lab3/countdown_timer_page/widgets/header_widget.dart';
import 'package:pam_lab3/countdown_timer_page/widgets/input_time_box/input_time_widget.dart';

import '../../resources/custom_colors.dart';
import 'countdown_timer_page_controller.dart';

class CountdownTimerPage extends StatefulWidget {
  const CountdownTimerPage({super.key});

  @override
  State<CountdownTimerPage> createState() => _CountdownTimerPageState();
}

class _CountdownTimerPageState extends State<CountdownTimerPage> {
  @override
  void initState() {
    super.initState();
    Get.put(CountdownTimerController());
  }

  @override
  Widget build(BuildContext context) {

    CountdownTimerController controller = Get.find();

    return Scaffold(
        backgroundColor: CustomColors.awesome,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeTitleWidget(),
              SizedBox(
                height: 298,
                width: 298,
                child:  Obx(() {
                  if(controller.buttonState.isFalse) {
                    return InputTimeWidget();
                  } else {
                    return BuildTime();
                  }
                }),
              ),
              ButtonControlWidget(),
            ],
          ),
        )
    );
  }
}