import 'package:flutter/material.dart';
import 'package:register/comp/button.dart';
import 'package:register/pages/login.dart';
import 'package:register/pages/signup.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.green),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Column(
                  children: [
                    MyButton(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup())),
                        child: const Icon(
                          Icons.app_registration,
                          color: Colors.white,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have An Account?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.amber, fontSize: 20),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
