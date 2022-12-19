import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  Widget displayCard(String title) {
    return InkWell(
      onTap: () {
        {
          MotionToast.success(
            description: Text(title),
            animationDuration: Duration.zero,
          ).show(context);
        }
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(title),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i < 10; i++) ...{
              displayCard("I am inside a card $i")
            },

            //for loop in dart
          ],
        ),
      ),
    ));
  }
}
