import 'package:flutter/cupertino.dart';

import '../../../../resources/strings.dart';
import '../../../../resources/text_styles.dart';

class TwoDotsWidget extends StatelessWidget {
  const TwoDotsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Text(
        Strings.twoDots,
        style: TextStyles.textStyleSFPro40(),
      ),
    );
  }
}