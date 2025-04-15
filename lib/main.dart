import 'package:flutter/material.dart';
import 'package:sneakers/models/cart.dart';
import 'package:sneakers/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp( // Changed 'materialApp' to 'MaterialApp'
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}