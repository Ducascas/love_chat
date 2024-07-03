import 'package:flutter/material.dart';
import 'package:love_chat/models/user.dart';
import 'package:love_chat/screens/message_screen.dart';
import 'package:love_chat/services/local_storage_service.dart';
import 'package:love_chat/widgets/user_tile.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  final _userService = UserLocalStorageService();
  List<User> _users = [];

  @override
  void initState() {
    super.initState();
    _userService.loadInitialUser();
    _getUser();
  }

  Future<void> _getUser() async {
    final users = await _userService.getUsers();
    setState(() {
      _users = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _users.isNotEmpty
        ? GestureDetector(
            onTap: _onTap,
            child: ListView.builder(
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  final user = _users[index];
                  return UserTile(
                    user: user,
                    isRead: false,
                  );
                }),
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }

  _onTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MessageScreen(),
      ),
    );
  }
}
