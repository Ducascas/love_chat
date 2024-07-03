import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:love_chat/core/style/colors.dart';
import 'package:love_chat/screens/chat_screen.dart';
import 'package:love_chat/services/bloc/incognito_cubit.dart';

class LoveChatApp extends StatelessWidget {
  const LoveChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IncognitoCubit(),
      child: MaterialApp(
        title: 'Love Chat App',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.blackPurple,
          useMaterial3: true,
        ),
        home: const ChatScreen(),
      ),
    );
  }
}