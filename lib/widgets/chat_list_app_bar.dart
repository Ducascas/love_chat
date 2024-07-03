import 'package:flutter/material.dart';
import 'package:love_chat/core/constants.dart';
import 'package:love_chat/core/style/text_style.dart';
import 'package:love_chat/widgets/switch_incognito.dart';

class ChatListAppBar extends StatelessWidget {
  const ChatListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Text(
            AppConstants.chats,
            style: AppTextStyle.xLarge,
          ),
        ),
        Text(
          AppConstants.off,
          style: AppTextStyle.large,
        ),
        SizedBox(width: 12),
        SwitchIncognito(),
      ],
    );
  }
}
