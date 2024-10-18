import 'package:flutter/material.dart';
import 'package:latihan2_fluter2/home.dart';
import 'package:latihan2_fluter2/page_2.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: HomePage.routers,
      routes: {
        HomePage.routers: (context) => const HomePage(),
        Page2.routeName: (context) => const Page2(),
      },
    );
  }
}