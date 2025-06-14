import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsappg12/widgets/chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        ChatWidget(),
        // Container(
        //   child: CachedNetworkImage(
        //     progressIndicatorBuilder:
        //         (context, url, progress) => Center(
        //           child: CircularProgressIndicator(value: progress.progress),
        //         ),
        //     imageUrl:
        //         "https://images.pexels.com/photos/27198641/pexels-photo-27198641/free-photo-of-paisaje-naturaleza-vacaciones-arena.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        //     imageBuilder:
        //         (context, imageProvider) => Container(
        //           width: 200,
        //           height: 200,
        //           decoration: BoxDecoration(
        //             image: DecorationImage(
        //               image: imageProvider,
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //   ),
        // ),
      ],
    );
  }
}
