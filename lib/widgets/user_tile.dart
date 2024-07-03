import 'package:flutter/material.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/models/user.dart';
import 'package:love_chat/widgets/widgets.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, this.user, required this.isRead});

  final User? user;
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: _leading(),
      title: MessageTime(user: user),
      subtitle: _subtitle(),
      trailing: isRead
          ? const Icon(
              Icons.circle,
              size: 5,
              color: AppColors.white,
            )
          : null,
    );
  }

  _subtitle() => user != null ? MessageText(user: user) : null;

  _leading() => user != null ? const IconUser() : IconUser(user: user);
}
