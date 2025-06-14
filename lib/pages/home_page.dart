import 'package:flutter/material.dart';
import 'package:whatsappg12/pages/calls_page.dart';
import 'package:whatsappg12/pages/camera_page.dart';
import 'package:whatsappg12/pages/chat_page.dart';
import 'package:whatsappg12/pages/status_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff145F55),
          title: Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          children: [CameraPage(), ChatPage(), StatusPage(), CallsPage()],
        ),
      ),
    );
  }
}
