import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

void main() {
  runApp(GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  GpsDoMundo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();

    return MaterialApp(
      theme: theme,
      title: 'GPS do Mundo',
      home: const Home(),
    );
  }
}
