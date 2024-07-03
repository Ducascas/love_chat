import 'package:flutter/material.dart';
import 'package:love_chat/core/core.dart';
import 'package:love_chat/widgets/widgets.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final heightAppBar = MediaQuery.of(context).size.height * 0.2;
    final heightBody = MediaQuery.of(context).size.height * 0.08;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBar(
          backgroundColor: AppColors.whiteGrey,
          leading: const RowLeadingUser(),
          // elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(bottom: 16),
              color: AppColors.purple,
              padding: const EdgeInsets.all(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image(
                      image: AppIcons.rocket,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      AppConstants.countLove,
                      style: AppTextStyle.smallWhite,
                    ),
                  ),
                  Icon(
                    Icons.clear,
                    size: 14,
                    color: AppColors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(color: AppColors.whiteGrey, height: heightBody),
          const MessageContainer(),
        ],
      ),
    );
  }
}
