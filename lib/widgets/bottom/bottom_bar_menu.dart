import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_chat/core/core.dart';

class BottomBarMenu extends StatelessWidget {
  const BottomBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Image(
            image: AppIcons.romb,
            fit: BoxFit.fill,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            CupertinoIcons.chat_bubble_text,
            color: AppColors.yellow,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            CupertinoIcons.heart,
            color: AppColors.purple,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.settings_outlined,
            color: AppColors.purple,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
