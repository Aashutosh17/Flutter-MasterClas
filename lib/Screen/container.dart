import 'package:flutter/material.dart';


class ScreenContainer extends StatefulWidget {
  const ScreenContainer({super.key});

  @override
  State<ScreenContainer> createState() => _ScreenContainerState();
}

class _ScreenContainerState extends State<ScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height:200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 240, 219, 143),
              border: Border.all(
                color: Colors.red,
                width: 10,
                
              )
             ),
            child: const Text('I am a container'),
            ),
          ),
        ),
      );
  }
}