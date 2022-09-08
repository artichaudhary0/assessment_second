import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/card.dart';
import '../utils/program_events_heading.dart';

class UserLearningScreen extends StatelessWidget {
  UserLearningScreen({Key? key}) : super(key: key);

  final List programsForYou = [
    [
      "LifeStyle",
      "Understanding the behaviour of life",
      "assets/book2.png",
      12
    ],
    [
      "LifeStyle",
      "Understanding the behaviour of life",
      "assets/book2.png",
      12
    ],
    [
      "LifeStyle",
      "Understanding the behaviour of life",
      "assets/book2.png",
      12,
    ],
  ];
  final List recentForYou = [
    [
      "LifeStyle",
      "Understanding the behaviour of technology",
      "assets/book3.png",
      12
    ],
    [
      "LifeStyle",
      "Understanding the behaviour of technology",
      "assets/book3.png",
      12
    ],
    [
      "LifeStyle",
      "Understanding the behaviour of technology",
      "assets/book3.png",
      12,
    ],
  ];
  final List tecForYou = [
    ["LifeStyle", "Understanding the behaviour of tec", "assets/book1.png", 12],
    ["LifeStyle", "Understanding the behaviour of tec", "assets/book1.png", 12],
    [
      "LifeStyle",
      "Understanding the behaviour of tec",
      "assets/book1.png",
      12,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Text(
          "Explore what you love",
          style: GoogleFonts.lora(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProgramEventsHeading(
                heading: 'Life-Style',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  height: 310,
                  child: ListView.builder(
                      itemCount: programsForYou.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return JobCard(
                          program: programsForYou[index][0],
                          aboutProgram: programsForYou[index][1],
                          image: programsForYou[index][2],
                          lessons: programsForYou[index][3],
                        );
                      }),
                ),
              ),
              ProgramEventsHeading(
                heading: 'Technology',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  height: 310,
                  child: ListView.builder(
                      itemCount: recentForYou.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return JobCard(
                          program: recentForYou[index][0],
                          aboutProgram: recentForYou[index][1],
                          image: recentForYou[index][2],
                          lessons: recentForYou[index][3],
                        );
                      }),
                ),
              ),
              ProgramEventsHeading(
                heading: 'Working-Style',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  height: 310,
                  child: ListView.builder(
                      itemCount: tecForYou.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return JobCard(
                          program: tecForYou[index][0],
                          aboutProgram: tecForYou[index][1],
                          image: tecForYou[index][2],
                          lessons: tecForYou[index][3],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
