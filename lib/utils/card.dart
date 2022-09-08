import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobCard extends StatelessWidget {
  const JobCard(
      {Key? key,
      required this.program,
      required this.aboutProgram,
      required this.image,
      required this.lessons})
      : super(key: key);
  final String program;
  final String aboutProgram;
  final String image;
  final int lessons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: Colors.grey.shade100,
        ),
        width: 242,
        child: Column(children: [
          SizedBox(
            width: 242,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  program,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: const Color(0xff598BED),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  aboutProgram,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "$lessons lessons",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
