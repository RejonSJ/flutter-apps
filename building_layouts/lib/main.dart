import 'package:building_layouts/widgets/text_section.dart';
import 'package:flutter/material.dart';
import 'widgets/button_column.dart';
import 'widgets/carousel.dart';
import 'widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttonColumn(color: color, icon: Icons.call, label: 'CALL', snackText: 'Número no disponible',),
        buttonColumn(color: color, icon: Icons.near_me, label: 'ROUTE', snackText: 'No se pudo acceder a Google Maps',),
        buttonColumn(color: color, icon: Icons.share, label: 'SHARE', snackText: 'Página copiada al portapapeles',),
      ],
    );
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body: ListView(
          children: [
            carousel(),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

