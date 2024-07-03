import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_chat/core/assets_const.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/services/bloc/incognito_cubit.dart';

class SwitchIncognito extends StatefulWidget {
  const SwitchIncognito({super.key});

  @override
  State<SwitchIncognito> createState() => _SwitchIncognitoState();
}

class _SwitchIncognitoState extends State<SwitchIncognito> {
  @override
  Widget build(BuildContext context) {
    final incognitoCubit = context.read<IncognitoCubit>();

    return BlocBuilder<IncognitoCubit, IncognitoState>(
      builder: (context, state) {
        return Switch(
          activeColor: AppColors.darkGrey,
          activeThumbImage: AppIcons.swithers,
          inactiveTrackColor: AppColors.darkGrey,
          focusColor: AppColors.darkGrey,
          value: incognitoCubit.state.isExpanded,
          onChanged: (value) =>
              incognitoCubit.toggleSize(), //  _toggleBottomSheet,
        );
      },
    );
  }
}
