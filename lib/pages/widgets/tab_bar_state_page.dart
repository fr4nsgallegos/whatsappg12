import 'package:flutter/material.dart';

class TabBarStatePage extends StatefulWidget {
  const TabBarStatePage({super.key});

  @override
  State<TabBarStatePage> createState() => _TabBarStatePageState();
}

class _TabBarStatePageState extends State<TabBarStatePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  List<String> titulos = [
    "Noticias",
    "Mensajes",
    "Ajustes",
    "Noticias",
    "Mensajes",
    "Ajustes",
  ];

  @override
  void initState() {
    _controller = TabController(length: titulos.length, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab dinámico"),
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.orange,
          unselectedLabelColor: Colors.red,
          labelColor: Colors.green,
          controller: _controller,
          tabs: titulos.map((e) => Center(child: Text(e))).toList(),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children:
            titulos
                .map((titulo) => Center(child: Text("Vista de $titulo")))
                .toList(),
      ),
    );
  }
}
