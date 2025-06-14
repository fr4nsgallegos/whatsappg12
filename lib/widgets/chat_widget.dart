import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 56,
        width: 56,
        child: CachedNetworkImage(
          imageUrl:
              "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/e40b6ea6361a1abe28f32e7910f63b66/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
          progressIndicatorBuilder:
              (context, url, progress) => Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                  value: progress.progress,
                  strokeWidth: 5,
                ),
              ),
          imageBuilder:
              (context, imageProvider) =>
                  CircleAvatar(backgroundImage: imageProvider, radius: 28),
        ),
      ),
      title: Text(
        "Nombre de la persona",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unkn",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        children: [
          Text("15:30"),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Center(
              child: Text("1", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
