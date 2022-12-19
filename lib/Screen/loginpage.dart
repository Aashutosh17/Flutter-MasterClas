import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            "assets/images/logo.png",
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Text(
            "Login Here!",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: " Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: " Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: const Text("Login"),

                  style: TextButton.styleFrom(minimumSize: const Size(150, 60)),

                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
