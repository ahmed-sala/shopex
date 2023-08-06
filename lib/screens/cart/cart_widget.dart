import 'package:ecomerce/consts/app_constants.dart';
import 'package:ecomerce/screens/cart/quantity_bottom_sheet.dart';
import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl: AppConstant.producctImageUrl,
                  height: size.height * 0.2,
                  width: size.height * 0.2,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(
                            label: 'Title' * 10,
                            maxLines: 2,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.clear,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                IconlyLight.heart,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                          label: "16\$",
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                            ),
                            side: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          onPressed: () async {
                            await showModalBottomSheet(
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    16,
                                  ),
                                  topRight: Radius.circular(
                                    16,
                                  ),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return QuantityBottomSheetWidget();
                              },
                            );
                          },
                          label: Text(
                            "Qty: 6",
                          ),
                          icon: Icon(
                            IconlyLight.arrowDown2,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
