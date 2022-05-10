import 'package:flutter/material.dart';

class StoryBubble extends StatelessWidget {
  const StoryBubble({
    Key? key,
    required this.text,
  }) : super(key: key);
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
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
