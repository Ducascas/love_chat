import 'package:flutter/material.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/widgets/widgets.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final heightAppBar = MediaQuery.of(context).size.height * 0.2;
    final heightBody = MediaQuery.of(context).size.height * 0.08;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightAppBar),
        child: AppBar(
          backgroundColor: AppColors.whiteGrey,
          elevation: 0.0,
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(color: AppColors.whiteGrey, height: heightBody),
          const ContainerChat(),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
