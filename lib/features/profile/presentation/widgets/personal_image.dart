import 'package:flutter/material.dart';

class PersonalImage extends StatelessWidget {
  const PersonalImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: SizedBox(
        height: 80,
        width: 80,
        child: Image.asset(
          "assets/personPic.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
