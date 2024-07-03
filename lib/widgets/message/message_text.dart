import 'package:flutter/material.dart';
import 'package:love_chat/core/style/text_style.dart';
import 'package:love_chat/models/user.dart';

class MessageText extends StatelessWidget {
  const MessageText({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Text(
      user?.text ?? '',
      style: AppTextStyle.mediumWhite,
    );
  }
}
