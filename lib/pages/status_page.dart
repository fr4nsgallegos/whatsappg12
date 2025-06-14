import 'package:flutter/material.dart';
import 'package:whatsappg12/widgets/cabecera_status_widget.dart';
import 'package:whatsappg12/widgets/status_item_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CabeceraStatusWidget(),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          color: Colors.grey.shade100,
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Text(
            "Actualizaciones recientes",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        StatusItemWidget(),
        StatusItemWidget(),
        StatusItemWidget(),
        StatusItemWidget(),
        StatusItemWidget(),
        StatusItemWidget(),
        StatusItemWidget(),
      ],
    );
  }
}
