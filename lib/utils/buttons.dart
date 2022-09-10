import 'package:flutter/material.dart';

class ButtonsForAccountScreen extends StatelessWidget {
  const ButtonsForAccountScreen({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          child:  Center(
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }
}
