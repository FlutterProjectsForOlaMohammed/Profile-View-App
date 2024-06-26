import 'package:flutter/material.dart';
import 'package:profile_app/core/utils/constants.dart';

class PercentageCircle extends StatelessWidget {
  const PercentageCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Text("80%",
              style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor)),
        ),
        SizedBox(
          height: 80,
          width: 80,
          child: CircularProgressIndicator(
            strokeWidth: 7.03,
            value: 1,
            color: kPrimaryColor.withOpacity(0.1),
          ),
        ),
        SizedBox(
          height: 80,
          width: 80,
          child: Transform.flip(
            flipX: true,
            child: CircularProgressIndicator(
              strokeWidth: 7.03,
              value: 0.6,
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
