import 'package:flutter/material.dart';

import 'app/viewes/home_view.dart';

main() {
  runApp(AppWidth());
}

class AppWidth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
