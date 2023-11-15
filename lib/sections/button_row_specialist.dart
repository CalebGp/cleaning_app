import 'package:cleaning_app/sections/components/index.dart';
import 'package:flutter/material.dart';

class ButtonRowSpecialist extends StatelessWidget {
  const ButtonRowSpecialist({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SpecialistWidget(
            name: "John P. Boisvert",
            path: 'john',
          ),
          SpecialistWidget(
            name: "Sylvia V. Bagley",
            path: "silvia",
          ),
        ],
      ),
    );
  }
}
