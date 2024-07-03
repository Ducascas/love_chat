import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:love_chat/core/assets_const.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/models/user.dart';

class IconUser extends StatelessWidget {
  const IconUser({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    int randomIndex = Random().nextInt(AppImage.listImages.length);
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        color: AppColors.darkPurple,
        shape: BoxShape.circle,
      ),
      child: user == null
          ? Image(image: AppImage.listImages[randomIndex], fit: BoxFit.fill)
          : const Icon(
              CupertinoIcons.heart_fill,
              color: AppColors.purple,
            ),
    );
  }
}
