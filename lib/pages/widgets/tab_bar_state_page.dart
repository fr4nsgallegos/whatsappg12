import 'package:flutter/material.dart';

class TabBarStatePage extends StatefulWidget {
  const TabBarStatePage({super.key});

  @override
  State<TabBarStatePage> createState() => _TabBarStatePageState();
}

class _TabBarStatePageState extends State<TabBarStatePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  List<String> titulos = ["Noticias", "Mensajes", "Ajustes"];

  int x = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    x = 10; //incializa en 10 somulando la carga desde  una base de datos
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x += 10;
          setState(() {});
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(x.toString(), style: TextStyle(fontSize: 50))],
        ),
      ),
    );
  }
}
