import 'dart:math';

import 'package:flutter/material.dart';
import 'package:love_chat/core/core.dart';

class RowLeadingUser extends StatelessWidget {
  const RowLeadingUser({super.key});

  @override
  Widget build(BuildContext context) {
    int randomIndex = Random().nextInt(AppImage.listImages.length);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
            size: 12,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        // Expanded(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Image(
        //       image: AppImage.listImages[randomIndex],
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        //     ),
      ],
    );
  }
}
