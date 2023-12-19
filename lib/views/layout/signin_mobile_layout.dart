import 'package:flutter/material.dart';
import 'package:looniwise_frontend/Utilities/mobile_custom_clipper.dart';
import 'package:looniwise_frontend/Utilities/mobile_signin_clipper.dart';

class SigninMobileLayout extends StatefulWidget {
  const SigninMobileLayout({super.key});

  @override
  State<SigninMobileLayout> createState() => _SigninMobileLayoutState();
}

class _SigninMobileLayoutState extends State<SigninMobileLayout> {
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
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: height / 3,
              width: double.maxFinite,
              child: ClipPath(
                clipper: MobileSigninClipper(),
                child: Container(
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
              ),
            ),
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
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
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
            ),
          ],
        ),
      ),
    );
  }
}
