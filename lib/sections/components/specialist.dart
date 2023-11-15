import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpecialistWidget extends StatelessWidget {
  final String name;
  final String path;
  const SpecialistWidget({
    super.key,
    required this.name,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 17),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 20,
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                width: 155,
                height: 96,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("icons/shield.svg"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Opacity(
                          opacity: 0.40,
                          child: Text(
                            'Verified',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 0, 20, 0),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 44,
              height: 44,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("images/$path.jpg"),
                  fit: BoxFit.cover,
                ),
                shape: const OvalBorder(
                  side: BorderSide(width: 2, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
