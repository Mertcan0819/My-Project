import 'package:flutter/material.dart';

import 'demos/MyProject.dart';  // çalışmalarım

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      
      debugShowCheckedModeBanner: false,  // ekranın sağ üstünde kırmızı çapraz yazıyı silmek için  bu kod kullanılıyor 
      home: const MyProjectDemoView(),
    );
  }
}

