import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramEventsHeading extends StatelessWidget {
  const ProgramEventsHeading({Key? key, required this.heading})
      : super(key: key);
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffFFFFFF),
      padding: const EdgeInsets.only(left: 20, top: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                heading,
                style: GoogleFonts.lora(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    "View all ",
                    style: GoogleFonts.inter(
                        color: const Color.fromRGBO(109, 116, 122, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Color(0xff6D747A),
                    size: 20,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
