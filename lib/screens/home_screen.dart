import 'package:card_swiper/card_swiper.dart';
import 'package:ecomerce/consts/app_constants.dart';
import 'package:ecomerce/services/assets_manger.dart';
import 'package:ecomerce/widgets/app_name_text.dart';
import 'package:ecomerce/widgets/products/ctg_rounded_widget.dart';
import 'package:ecomerce/widgets/products/latest_arrival.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
        title: AppNameTextWidget(
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.24,
                child: ClipRRect(
                  child: Swiper(
                    itemBuilder: (context, index) {
                      return Image.asset(
                        AppConstant.bannerImage[index],
                        fit: BoxFit.fill,
                      );
                    },
                    indicatorLayout: PageIndicatorLayout.COLOR,
                    autoplay: true,
                    itemCount: AppConstant.bannerImage.length,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        activeColor: Colors.blue,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              TitlesTextWidget(
                label: "Latest arrival",
                fontSize: 22,
              ),
              SizedBox(
                height: 18,
              ),
              SizedBox(
                height: size.height * 0.2,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return LatestArrivalProductWidget();
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              const TitlesTextWidget(
                label: "Categories",
                fontSize: 22,
              ),
              SizedBox(
                height: 18,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: List.generate(
                  AppConstant.categoriesList.length,
                  (index) => CategoryRoundedWidget(
                    image: AppConstant.categoriesList[index].image,
                    name: AppConstant.categoriesList[index].name,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
