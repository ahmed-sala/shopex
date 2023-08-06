import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

class EmptyBagWidget extends StatelessWidget {
  final imagePath, title, subtitle, buttonText;

  const EmptyBagWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: size.height * 0.35,
              width: double.infinity,
            ),
            TitlesTextWidget(
              label: "Whoooops!",
              fontSize: 40,
              color: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            SubtitleTextWidget(
              label: title,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SubtitleTextWidget(
                label: subtitle,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(
                  20,
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
