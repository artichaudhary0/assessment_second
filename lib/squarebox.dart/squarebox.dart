import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTags extends StatelessWidget {
  const ButtonTags({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 48,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(
                0xff598BED,
              ),
            )),
        child: Center(
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 15,
              ),
              Text(
                text, overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: const Color(
                      0xff598BED,
                    ),
                    fontSize: 14),
                // style: TextStyle(
                //

                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
