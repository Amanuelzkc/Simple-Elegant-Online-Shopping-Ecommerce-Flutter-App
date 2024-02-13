import 'package:flutter/material.dart';
import 'package:register/comp/button.dart';
import 'package:register/pages/intropage.dart';
import 'package:register/pages/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/green1.png"), fit: BoxFit.fill)),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.white30, Colors.green])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Signup",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "User name"),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Password"),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Confirm Password"),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MyButton(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const IntroPage())),
                          child: const Icon(Icons.app_registration)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already Signed up?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          InkWell(
                            child: const Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.amber, fontSize: 18),
                            ),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login())),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
