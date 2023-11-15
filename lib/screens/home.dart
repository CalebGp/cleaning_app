import 'package:cleaning_app/sections/button_row_services.dart';
import 'package:cleaning_app/sections/button_row_specialist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70.0,
            right: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text(
                      'Hello Charm 👋',
                      style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "icons/search.svg",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                width: 327,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "images/cleaning.png",
                    ),
                    fit: BoxFit.cover, // Optional: Adjust the fit of the image
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 23,
                    ),
                    Text(
                      'Get Discount ',
                      style: GoogleFonts.quicksand(
                        color: const Color(0xFF084F4F),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'up to',
                          style: GoogleFonts.quicksand(
                            color: const Color(0xFF084F4F),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 21,
                        ),
                        Text(
                          '25%',
                          style: GoogleFonts.quicksand(
                            color: const Color(0xFFBB4807),
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 29,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 64.0, top: 10),
                      child: Text(
                        'On this months!',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.quicksand(
                          color: const Color(0xFF497777),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250.0),
                child: Text(
                  'Services',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ButtonRowServices(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240.0),
                child: Text(
                  'Specialist',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const ButtonRowSpecialist(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Additional Information',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Opacity(
                  opacity: 0.40,
                  child: Text(
                    'Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "icons/home.svg",
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "icons/user.svg",
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "icons/message.svg",
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset("icons/settings.svg"),
              ),
              label: ""),
        ],
      ),
    );
  }
}
