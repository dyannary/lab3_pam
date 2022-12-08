import 'package:flutter/material.dart';

import '../../../resources/strings.dart';
import '../../../resources/text_styles.dart';

class HomeTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.homeTitle,
      style: TextStyles.textStyleSFPro32(),
      textAlign: TextAlign.center,
    );
  }
}