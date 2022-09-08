import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserChatScreen extends StatelessWidget {
  UserChatScreen({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CHAT SUPPORT",
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Any Query? Let's have chat and solve this together,",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(8, 9, 10, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text("Let's Talk"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
