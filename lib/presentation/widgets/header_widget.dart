import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 600,
          decoration: BoxDecoration(border: Border.all(color: Colors.indigo, width: 4)),
          child: const Text(
            "Countdown Timer",
            style: TextStyle(fontSize: 32, color: Color.fromRGBO(255, 255, 255, 1)),
          ),
        )
      ],
    );
  }
}
