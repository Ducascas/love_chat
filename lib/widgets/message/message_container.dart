import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_chat/core/core.dart';
import 'package:love_chat/widgets/widgets.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.07;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.whiteBlack,
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Expanded(
            child: Text(
              AppConstants.startChat,
              style: AppTextStyle.smallGrey,
            ),
          ),
          const RowMessageBar(),
          SizedBox(height: height),
        ],
      ),
    );
  }
}
