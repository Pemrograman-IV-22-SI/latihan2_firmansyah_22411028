import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});
  static const routeName = '/page2';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    String npm = args['npm'];
    String nama = args['nama'];
    return Scaffold(
      body: Center(
        child: Column(children: [
          const Text('Data Mahasiswa'),
          const SizedBox(height: 10,),
          Text('NPM : $npm'),
          const SizedBox(height: 10,),
          Text('Nama : $nama'),
          const SizedBox(height: 10,),
        ],),
         ),
    );
  }
}