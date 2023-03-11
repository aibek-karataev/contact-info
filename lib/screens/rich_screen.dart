import 'package:flutter/material.dart';

class RichScreen extends StatelessWidget {
  const RichScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task 3',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        backgroundColor: Colors.amber.shade600,
        centerTitle: true,
      ),
      backgroundColor: Colors.amber.shade600,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I'm Rich",
            style: TextStyle(
              fontSize: 48,
              fontFamily: "Sofia",
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          Image(image: AssetImage("assets/images/rich.png")),
        ],
      ),
    );
  }
}
