import 'package:flutter/material.dart';

class CabeceraStatusWidget extends StatelessWidget {
  const CabeceraStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(2),
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text("Mi estado", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("Hace 27 minutos, 7:10 pm."),
      trailing: Icon(Icons.abc),
    );
  }
}
