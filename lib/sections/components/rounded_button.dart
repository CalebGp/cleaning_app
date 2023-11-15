import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  final String path;
  final String text;
  const RoundedButton({
    super.key,
    required this.path,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21.0),
      child: Column(
        children: [
          Material(
            shape: const OvalBorder(),
            elevation: 1,
            child: Container(
              width: 85,
              height: 85,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                    width: 44.85, height: 53.14, "icons/$path.svg"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: GoogleFonts.quicksand(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
