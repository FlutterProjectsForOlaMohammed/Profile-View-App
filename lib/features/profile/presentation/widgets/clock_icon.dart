import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_app/core/utils/app_pictures.dart';

class ClockIcon extends StatelessWidget {
  const ClockIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppPictutures.clockIcon,
      height: 20,
      width: 20,
    );
  }
}
