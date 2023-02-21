import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Utils/constants.dart';

class forgotPasswordLink extends StatelessWidget {
  const forgotPasswordLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Forgot Password? ',
        style: textLight(COLOR_GREY,12),
        children: [
          TextSpan(
            text: 'Click here',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: COLOR_BLUEMASK
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Navigate to Forgot Password screen
              },
          ),
          TextSpan(
            text: 'to reset.',
            style: textLight(COLOR_GREY,12),
          )
        ],
      ),
    );
  }
}
