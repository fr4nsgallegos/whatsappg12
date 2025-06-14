import 'package:flutter/material.dart';

class TabBarVertical extends StatefulWidget {
  const TabBarVertical({super.key});

  @override
  State<TabBarVertical> createState() => _TabBarVerticalState();
}

class _TabBarVerticalState extends State<TabBarVertical> {
  int selectedIndex = 0;
  List<String> titulos = ["Noticias", "Mensajes", "Ajustes"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tab Bar vertical")),
      body: Row(
        children: [
          Container(
            width: 120,
            color: Colors.grey,
            child: Column(
              children: List.generate(titulos.length, (index) {
                return ListTile(
                  title: Text(titulos[index]),
                  selected: selectedIndex == index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                );
              }),
            ),
          ),
          Expanded(
            child: Center(child: Text("Vista ${titulos[selectedIndex]}")),
          ),
        ],
      ),
    );
  }
}
