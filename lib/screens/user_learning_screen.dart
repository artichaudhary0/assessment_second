import 'package:assessmentsecond/list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/card.dart';
import '../utils/program_events_heading.dart';

class UserLearningScreen extends StatelessWidget {
  UserLearningScreen({Key? key}) : super(key: key);

  ListsOFProject listsOFProject = ListsOFProject();

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
              const ProgramEventsHeading(
                heading: 'Life-Style',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  height: 310,
                  child: ListView.builder(
                      itemCount: listsOFProject.programsForYou.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return JobCard(
                          program: listsOFProject.programsForYou[index][0],
                          aboutProgram: listsOFProject.programsForYou[index][1],
                          image: listsOFProject.programsForYou[index][2],
                          lessons: listsOFProject.programsForYou[index][3],
                        );
                      }),
                ),
              ),
              const ProgramEventsHeading(
                heading: 'Technology',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  height: 310,
                  child: ListView.builder(
                      itemCount: listsOFProject.recentForYou.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return JobCard(
                          program: listsOFProject.recentForYou[index][0],
                          aboutProgram: listsOFProject.recentForYou[index][1],
                          image: listsOFProject.recentForYou[index][2],
                          lessons: listsOFProject.recentForYou[index][3],
                        );
                      }),
                ),
              ),
              const ProgramEventsHeading(
                heading: 'Working-Style',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  height: 310,
                  child: ListView.builder(
                      itemCount: listsOFProject.tecForYou.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return JobCard(
                          program: listsOFProject.tecForYou[index][0],
                          aboutProgram: listsOFProject.tecForYou[index][1],
                          image: listsOFProject.tecForYou[index][2],
                          lessons: listsOFProject.tecForYou[index][3],
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
