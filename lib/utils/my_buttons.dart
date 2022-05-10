import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key, this.icon, required this.number})
      : super(key: key);
  final icon;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          icon,
          SizedBox(
            height: 10,
          ),
          Text(number),
        ],
      ),
    );
  }
}
