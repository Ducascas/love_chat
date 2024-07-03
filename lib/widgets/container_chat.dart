import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/services/bloc/incognito_cubit.dart';
import 'package:love_chat/widgets/widgets.dart';

class ContainerChat extends StatelessWidget {
  const ContainerChat({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncognitoCubit, IncognitoState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(16),
          margin: state.isExpanded
              ? EdgeInsets.zero
              : const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
          decoration: const BoxDecoration(
            color: AppColors.whiteBlack,
            borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
          ),
          child: const Column(
            children: [
              ChatListAppBar(),
              SizedBox(height: 8),
              UserTile(isRead: true),
              SizedBox(height: 8),
              Expanded(child: ChatList()),
            ],
          ),
          // ),
        );
      },
    );
  }
}
