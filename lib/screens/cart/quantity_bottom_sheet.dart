import 'dart:developer';

import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class QuantityBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 6,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16,
              ),
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    log("index $index");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Center(
                      child: SubtitleTextWidget(
                        label: "${index + 1}",
                      ),
                    ),
                  ),
                );
              },
              itemCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
