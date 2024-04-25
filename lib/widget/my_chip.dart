import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  MyChip({
    super.key,
    required this.label,
    required this.color,
  });

  String label;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(100)),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}