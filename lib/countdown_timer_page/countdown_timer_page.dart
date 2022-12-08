import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_lab3/presentation/home/widgets/build_time.dart';
import 'package:pam_lab3/presentation/home/widgets/buttons_box/button_controls_widget.dart';
import 'package:pam_lab3/presentation/home/widgets/header_widget.dart';
import 'package:pam_lab3/presentation/home/widgets/input_time_box/input_time_widget.dart';

import '../../resources/custom_colors.dart';
import 'home_controller.dart';

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {

    HomeController controller = Get.find();

    return Scaffold(
        backgroundColor: CustomColors.awesome,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //const SizedBox(height: 79),
              HomeTitleWidget(),
              //const SizedBox(height: 140),
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
              //const SizedBox(height: 80),
              ButtonControlWidget(),
            ],
          ),
        )
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}