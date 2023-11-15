import 'package:cleaning_app/sections/components/index.dart';
import 'package:flutter/material.dart';

class ButtonRowServices extends StatelessWidget {
  const ButtonRowServices({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RoundedButton(
            text: "Cleaning",
            path: "lady",
          ),
          RoundedButton(
            text: "Laundry",
            path: "laundry",
          ),
          RoundedButton(
            text: "Plumbing",
            path: "plumbing",
          ),
        ],
      ),
    );
  }
}
