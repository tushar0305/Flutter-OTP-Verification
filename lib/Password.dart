import 'package:flutter/material.dart';

class MyPassword extends StatefulWidget {
  const MyPassword({Key? key}) : super(key: key);

  @override
  State<MyPassword> createState() => _MyPasswordState();
}

class _MyPasswordState extends State<MyPassword> {
  TextEditingController countryCode = TextEditingController();

  var new_pass = "";
  var confirm_pass = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/password.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Setup Password",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Create a New Password for your account",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      onChanged: (value) {
                        new_pass = value;
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "New Password",
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      onChanged: (value) {
                        confirm_pass = value;
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 55, 239, 249),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text("Done")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
