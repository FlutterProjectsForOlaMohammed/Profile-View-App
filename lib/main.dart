import 'package:flutter/material.dart';
import 'package:profile_app/features/profile/presentation/views/profile_view.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileView(),
    );
  }
}
