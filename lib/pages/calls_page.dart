import 'package:flutter/material.dart';
import 'package:whatsappg12/widgets/call_widget.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CallWidget(),
          CallWidget(),
          CallWidget(),
          CallWidget(),
          CallWidget(),
          CallWidget(),
        ],
      ),
    );
  }
}
