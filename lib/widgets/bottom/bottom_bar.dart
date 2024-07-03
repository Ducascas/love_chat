import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/services/bloc/incognito_cubit.dart';
import 'package:love_chat/widgets/widgets.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncognitoCubit, IncognitoState>(
      builder: (context, state) {
        final heightBar = state.isExpanded ? 0.07 : 0.5;
        final height = MediaQuery.of(context).size.height * heightBar;

        return BottomAppBar(
          color: AppColors.black,
          height: height,
          child: state.isExpanded
              ? const BottomBarMenu()
              : const BottomBarIncognito(),
        );
      },
    );
  }
}
