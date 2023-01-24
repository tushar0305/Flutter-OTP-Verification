// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:login_register/MainPage.dart';
import 'package:login_register/wifi_page.dart';
import 'package:flutter_spinbox/material.dart';

class Remote extends StatefulWidget {
  final int index;

  const Remote(this.index, {super.key});

  @override
  State<Remote> createState() => _RemoteState();
}

class _RemoteState extends State<Remote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Device Name : ${widget.index}')),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UpdateWiFi()),
            );

            // Add your onPressed code here!
          },
          backgroundColor: Colors.blue[200],
          child: const Icon(Icons.wifi),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: Center(
            child: Column(
          children: [
            const SizedBox(height: 50.0),
            const Text(
              'Current Temperature :',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text(
              '15 \u00B0C',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 35.0),
            const Text(
              'Set Differentiate Temperature:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SpinBox(
                min: 5,
                max: 10,
                value: 7,
                keyboardType: TextInputType.none,
                readOnly: true,
                onChanged: (value) => print(value),
              ),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'Set Temperature:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: SpinBox(
                min: 35,
                max: 80,
                value: 50,
                keyboardType: TextInputType.none,
                readOnly: true,
                onChanged: (value) => print(value),
              ),
            ),
            const SizedBox(height: 50.0),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[300],
                  fixedSize: const Size(180, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              icon: const Icon(
                Icons.power_settings_new,
                color: Colors.white,
                size: 26.0,
              ),
              label: const Text('On/Off'),
              onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Success',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    content: const Icon(
                      Icons.check,
                      size: 50,
                      color: Colors.green,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage())),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
            ),
            // ElevatedButton(
          ],
        )));
  }
}
