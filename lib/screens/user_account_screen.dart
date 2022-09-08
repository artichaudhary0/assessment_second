import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/bubble_stories.dart';
import '../utils/card.dart';
import '../utils/program_events_heading.dart';

class UserAccountScreen extends StatelessWidget {
  UserAccountScreen({Key? key}) : super(key: key);

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
  final List order = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
    'Product 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "ACCOUNT DETAILS",
          style: GoogleFonts.lora(
              fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //profile picture
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                      ),
                      child: CircleAvatar(
                          backgroundImage: AssetImage("assets/image.jpg")),
                    ),
                    // following and followers
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Text(
                                "300",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "Credit points",
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "10",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "Total orders",
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "A Chaudhary",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "a@gmail.com",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(
                            5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Edit Profile",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(
                            5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Ad Tools",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(
                            5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Insights",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: ListView.builder(
                    itemCount: order.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return BubbleStories(
                        text: order[index],
                      );
                    },
                  ),
                ),
              ),
              const ProgramEventsHeading(
                heading: 'Your Purchases',
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
            ],
          ),
        ),
      ),
    );
  }
}
