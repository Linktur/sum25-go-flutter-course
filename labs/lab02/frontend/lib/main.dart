import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'user_profile.dart';
import 'chat_service.dart';
import 'user_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatService = ChatService();
    final userService = UserService();

    return MaterialApp(
      title: 'Lab 02 Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Lab 02 Chat'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Chat', icon: Icon(Icons.chat)),
                Tab(text: 'Profile', icon: Icon(Icons.person)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ChatScreen(chatService: chatService),
              UserProfile(userService: userService),
            ],
          ),
        ),
      ),
    );
  }
}
