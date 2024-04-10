import 'package:flutter/material.dart';

class CircularInd extends StatelessWidget {
  const CircularInd({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 600,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}
