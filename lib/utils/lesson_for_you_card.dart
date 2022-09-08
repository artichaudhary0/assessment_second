import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard(
      {Key? key,
      required this.program,
      required this.aboutProgram,
      required this.image,
      required this.date})
      : super(key: key);
  final String program;
  final String aboutProgram;
  final String image;
  final String date;

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
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color(0xff598BED)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  aboutProgram,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                    ),
                    Icon(
                      CupertinoIcons.lock,
                      color: Color.fromRGBO(109, 116, 122, 1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
