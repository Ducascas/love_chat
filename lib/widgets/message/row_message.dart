import 'package:flutter/material.dart';
import 'package:love_chat/core/assets_const.dart';
import 'package:love_chat/core/constants.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/core/style/text_style.dart';

class RowMessageBar extends StatelessWidget {
  const RowMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.add,
          size: 30,
          color: AppColors.grey,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: AppConstants.hintText,
              hintStyle: AppTextStyle.mediumGrey,
              suffixIcon: const SizedBox(
                width: 6,
                height: 8,
                child: Image(
                  image: AppIcons.alien,
                  fit: BoxFit.fill,
                ),
              ),
              contentPadding: const EdgeInsets.all(12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Icon(
          Icons.mic,
          size: 30,
          color: AppColors.grey,
        ),
      ],
    );
  }
}
