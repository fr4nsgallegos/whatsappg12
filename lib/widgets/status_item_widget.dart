import 'package:flutter/material.dart';

class StatusItemWidget extends StatelessWidget {
  const StatusItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 2),
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/371160/pexels-photo-371160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
        ),
      ),
      title: Text("Carlota", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("Ayer, 15:50 "),
    );
  }
}
