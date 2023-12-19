import 'package:flutter/material.dart';
import 'package:looniwise_frontend/Utilities/my_custome_clipper.dart';

class LandingTabletLayout extends StatelessWidget {
  const LandingTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: double.maxFinite / 6,
              width: double.maxFinite,
              decoration: const BoxDecoration(color: Colors.white),
              child: ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.blue,
                          Colors.purple,
                          Colors.purpleAccent
                        ],
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight)),
                    alignment: Alignment.topCenter,
                    padding: width > 1200
                        ? const EdgeInsets.only(top: 100)
                        : const EdgeInsets.only(top: 50),
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Center(
                        child: SizedBox(
                            height: 300,
                            child: Image.asset("assets/LooniWiseLogo.png")),
                      ),
                    )),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: width / 2,
                decoration: const BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.black26))),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Sign-in"),
                ),
              ),
              SizedBox(
                  width: width / 2,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Sign-up"))),
            ],
          )
        ],
      ),
    );
  }
}
