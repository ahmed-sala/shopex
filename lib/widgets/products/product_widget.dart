import 'package:ecomerce/consts/app_constants.dart';
import 'package:ecomerce/screens/inner_screens/product_details.dart';
import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductWidget extends StatefulWidget {
  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
        onTap: () async {
          await Navigator.pushNamed(context, ProductDetail.routeName);
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FancyShimmerImage(
                imageUrl: AppConstant.producctImageUrl,
                width: double.infinity,
                height: size.height * 0.22,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: TitlesTextWidget(
                    label: "Title " * 10,
                    maxLines: 2,
                  ),
                ),
                Flexible(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      IconlyLight.heart,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: SubtitleTextWidget(
                    label: "166.5\$ ",
                  ),
                ),
                Flexible(
                  child: Material(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightBlue,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      splashColor: Colors.red,
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_shopping_cart_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
