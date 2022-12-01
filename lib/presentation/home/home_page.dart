import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pam_lab3/presentation/widgets/header_widget.dart';

import '../../resources/custom_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.awesome,
      body: Center(
        child: Column(
          children: const [
            SizedBox(height:79),
            HeaderWidget(),
          ],
        ),
      ),
    );
  }
}
