import 'package:flutter/material.dart';

class TabBarSimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //número de pestañas
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplos de TabBar"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Inicio"),
              Tab(icon: Icon(Icons.star), text: "Favoritos"),
              Tab(icon: Icon(Icons.person), text: "Perfil"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Vista de inicio")),
            Center(child: Text("Vista de Favoritos")),
            Center(child: Text("Vista de Perfil")),
          ],
        ),
      ),
    );
  }
}
