import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.amber,
            child: const Text(" Container 1")
          ),
          Positioned(top:1 ,right: 1,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Text(" Container 2")
          ),
          ),
          Positioned(bottom:-100 ,right: 100,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.black,
            child: const Text(" Container 2")
          ),
          )

          
          
        ],
      ),
    )
    );
  }
}
