import 'package:flutter/material.dart';
import 'package:love_chat/core/constants.dart';
import 'package:love_chat/core/style/text_style.dart';
import 'package:love_chat/models/user.dart';

class MessageTime extends StatelessWidget {
  const MessageTime({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return user != null
        ? Text(
            '${user?.timeMsg.hour} ч ${user?.timeMsg.minute} мин',
            style: AppTextStyle.smallWhite,
          )
        : const Text(
            AppConstants.textLikeInfo,
            style: AppTextStyle.mediumThick,
          );
  }
}
