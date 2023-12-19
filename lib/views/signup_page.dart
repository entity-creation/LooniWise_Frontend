import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _email;
  late TextEditingController _password;
  late TextEditingController _confirmPassword;

  @override
  void initState() {
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const CircleAvatar(
                        backgroundColor: Colors.purple,
                        radius: 100,
                        foregroundImage: AssetImage("assets/person.png"),
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.image_rounded),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _firstName,
                  decoration: const InputDecoration(
                    hintText: "First name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _lastName,
                  decoration: const InputDecoration(
                    hintText: "Last name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _email,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _password,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _confirmPassword,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(
                    hintText: "Confirm Password",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Sign-up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
