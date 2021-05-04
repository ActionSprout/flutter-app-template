import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './theme.dart';

void main() {
  runApp(generateApp());
}

Widget generateApp({Key? key}) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    key: key,
    routes: {
      '/': (ctx) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

        return const HomeScreen();
      },
    },
    theme: TemplateTheme.themeData,
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Center(
              child: Text('It worked!'),
            ),
          ),
        ],
      ),
    );
  }
}
