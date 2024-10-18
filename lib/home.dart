import 'package:flutter/material.dart';
import 'package:latihan2_fluter2/page_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routers = '/home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

String npm = '';
String nama = '';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtNpm = TextEditingController();
    TextEditingController txtNama = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtNpm,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Masukkan NPM'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: txtNama,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Masukkan Nama'),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 16),
                Text('Npm : $npm\n Nama : $nama'),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      print(txtNpm.text);
                      print(txtNama.text);
                      setState(() {
                        npm = txtNpm.text;
                        nama = txtNama.text;
                        Navigator.pushNamed(context, Page2.routeName,
                            arguments: {'npm': npm, 'nama': nama});
                      });
                    },
                    child: const Text('Button'))
              ],
            )),
      ),
    );
  }
}