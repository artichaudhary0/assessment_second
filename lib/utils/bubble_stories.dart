import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(200),),
                
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
