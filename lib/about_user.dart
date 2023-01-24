//This page is for user details
import 'package:flutter/material.dart';

class AboutUser extends StatefulWidget {
  const AboutUser({super.key});

  @override
  State<AboutUser> createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.all(20),
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://googleflutter.com/sample_image.jpg'),
                      fit: BoxFit.fill))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(children: [
              Expanded(
                  child: Divider(
                thickness: 0.9,
                color: Colors.grey[400],
              )),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Vinay SV',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 0.9,
                  color: Colors.grey[400],
                ),
              )
            ]),
          ),
          const Text('Email: Vinaysv@gmail.com',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),

          const SizedBox(height: 70),
          //card
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.surfaceVariant,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Mobile Number'),
                  subtitle: Text('8904229596'),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Area'),
                  subtitle: Text('Yelhanka, Bengaluru'),
                ),
                ListTile(
                  leading: Icon(Icons.devices),
                  title: Text('Number of Devices'),
                  subtitle: Text('10'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  textStyle: const TextStyle(fontSize: 15),
                  // minimumSize: Size.fromHeight(75),
                  shape: const StadiumBorder()),
              onPressed: () async {
                Navigator.pushNamed(context, 'password');
              },
              child: const Text('Update Password'))
        ],
      ),
    ));
  }
}
