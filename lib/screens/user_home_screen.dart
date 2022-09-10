import 'package:assessmentsecond/list.dart';
import 'package:assessmentsecond/utils/program_events_heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/card.dart';
import '../utils/event_card.dart';
import '../utils/lesson_for_you_card.dart';
import '../squarebox.dart/squarebox.dart';

class UserHomeScreen extends StatelessWidget {
  UserHomeScreen({Key? key}) : super(key: key);
  ListsOFProject listsOFProject = ListsOFProject();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // status bar
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.square,
                      color: Color.fromRGBO(134, 142, 150, 1),
                    ),
                    Padding(
                      padding: EdgeInsets.all(.0),
                      child: Icon(
                        Icons.circle,
                        color: Color.fromRGBO(134, 142, 150, 1),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.arrowtriangle_down_fill,
                      color: Color.fromRGBO(134, 142, 150, 1),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // App bar
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
                color: const Color(0xffEEF3FD),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/menu.png",
                      color: const Color.fromRGBO(147, 156, 163, 1),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.question_answer_outlined,
                          color: Color.fromRGBO(147, 156, 163, 1),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          CupertinoIcons.bell,
                          color: Color.fromRGBO(147, 156, 163, 1),
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // User name
              Container(
                color: const Color(0xffEEF3FD),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Priya!",
                      style: GoogleFonts.lora(
                        color: const Color.fromRGBO(8, 9, 10, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "What do you wanna learn today?",
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(109, 116, 122, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: const [
                        ButtonTags(
                          text: "Program",
                          icon: Icon(
                            Icons.book_outlined,
                            color: Color(0xff598BED),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ButtonTags(
                          text: "Get help",
                          icon: Icon(
                            Icons.help,
                            color: Color(0xff598BED),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        ButtonTags(
                          text: "Learn",
                          icon: Icon(
                            CupertinoIcons.book_fill,
                            color: Color(0xff598BED),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ButtonTags(
                          text: "DD Tracker",
                          icon: Icon(
                            Icons.bar_chart,
                            color: Color(0xff598BED),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Cards View
              const ProgramEventsHeading(heading: "Programs for you"),
              Container(
                height: 270,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                      itemCount: listsOFProject.programsForYouHomeScreen.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return JobCard(
                          program: listsOFProject.programsForYouHomeScreen[index][0],
                          aboutProgram: listsOFProject.programsForYouHomeScreen[index][1],
                          image:listsOFProject.programsForYouHomeScreen[index][2],
                          lessons:listsOFProject.programsForYouHomeScreen[index][3],
                        );
                      }),
                ),
              ),
              const ProgramEventsHeading(
                heading: "Events and experiences",
              ),
              Container(
                height: 280,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                    itemCount: listsOFProject.eventsForYou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return EventCard(
                        program: listsOFProject.eventsForYou[index][0],
                        aboutProgram: listsOFProject.eventsForYou[index][1],
                        image: listsOFProject.eventsForYou[index][2],
                        date: listsOFProject.eventsForYou[index][3],
                      );
                    },
                  ),
                ),
              ),
              const ProgramEventsHeading(
                heading: "Lessons for you",
              ),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                    itemCount:listsOFProject.lessonForYou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return LessonCard(
                        program:listsOFProject.lessonForYou[index][0],
                        aboutProgram:listsOFProject.lessonForYou[index][1],
                        image: listsOFProject.lessonForYou[index][2],
                        date: listsOFProject.lessonForYou[index][3],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
