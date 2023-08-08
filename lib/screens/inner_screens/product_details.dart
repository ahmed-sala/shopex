import 'package:ecomerce/consts/app_constants.dart';
import 'package:ecomerce/widgets/app_name_text.dart';
import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductDetail extends StatefulWidget {
  static const String routeName = 'product_detail';
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppNameTextWidget(
          fontSize: 20,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.canPop(context) ? Navigator.pop(context) : null;
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          FancyShimmerImage(
            imageUrl: AppConstant.producctImageUrl,
            height: size.height * 0.38,
            width: double.infinity,
            boxFit: BoxFit.fill,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        "Title" * 10,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    SubtitleTextWidget(
                      label: "166.5\$ ",
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Material(
                        color: Colors.teal.shade200,
                        shape: CircleBorder(),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconlyLight.heart,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: kBottomNavigationBarHeight - 10,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart),
                            label: Text("Add to cart"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitlesTextWidget(
                      label: "About this item,",
                    ),
                    SubtitleTextWidget(
                      label: "In phone",
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                SubtitleTextWidget(
                  label: "describtion" * 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
