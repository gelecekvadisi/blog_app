import 'package:flutter/material.dart';

class BlogModel {
  String imageUrl;
  String title;
  String content;
  String chipLabel;
  Color chipColor;

  BlogModel({
    required this.imageUrl,
    required this.title,
    required this.content,
    required this.chipLabel,
    required this.chipColor,
  });
}
