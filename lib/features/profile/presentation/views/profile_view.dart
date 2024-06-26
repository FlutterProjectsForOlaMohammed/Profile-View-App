import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_app/features/profile/presentation/manager/cubits/cubit/show_answers_cubit.dart';
import 'package:profile_app/features/profile/presentation/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => ShowAnswersCubit(),
        child: const ProfileViewBody(),
      ),
    );
  }
}
