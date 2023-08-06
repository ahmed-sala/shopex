import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitlesTextWidget(label: 'Ahmed'),
          SubtitleTextWidget(
            label: 'hii there',
            fontSize: 60,
            color: Colors.red,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'hello world',
            ),
          ),
        ],
      ),
    );
  }
}
