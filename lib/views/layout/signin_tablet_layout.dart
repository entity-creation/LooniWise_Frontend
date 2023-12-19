import 'package:flutter/material.dart';

class SigninTabletLayout extends StatefulWidget {
  const SigninTabletLayout({super.key});

  @override
  State<SigninTabletLayout> createState() => _SigninTabletLayoutState();
}

class _SigninTabletLayoutState extends State<SigninTabletLayout> {
  late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: screenWidth / 2,
              height: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple, Colors.purpleAccent],
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
              )),
              child: Center(
                child: Image.asset("assets/LooniWiseLogo.png"),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                      controller: _email,
                      decoration: const InputDecoration(hintText: "Email"),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                      controller: _password,
                      decoration: const InputDecoration(hintText: "Password"),
                      obscureText: true,
                      obscuringCharacter: "*",
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Sign-in"),
                    ),
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Forgot password?"),
                    ),
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Already have an account?"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
