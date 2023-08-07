import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class CategoryRoundedWidget extends StatelessWidget {
  final String image, name;
  CategoryRoundedWidget({
    required this.image,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 50,
          width: 50,
        ),
        SizedBox(
          height: 15,
        ),
        SubtitleTextWidget(
          label: name,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
