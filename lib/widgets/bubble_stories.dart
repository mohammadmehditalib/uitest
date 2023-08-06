import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const   BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue
            ),
            child: Image.asset('Assets/$name'),
          ),
          const SizedBox(
            height: 5,
          ),
          Text('#${name.substring(0, name.length - 3)}'),
        ],
      ),
    );
  }
}
