import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:ecomerce/services/assets_manger.dart';
import 'package:ecomerce/widgets/products/product_widget.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

class Searchscreen extends StatefulWidget {
  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  late TextEditingController searchTextController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AssetsManager.shoppingCart),
          ),
          title: TitlesTextWidget(
            label: "Search",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: searchTextController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      searchTextController.clear();
                      FocusScope.of(context).unfocus();
                      ;
                    },
                    child: Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  ),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: DynamicHeightGridView(
                  itemCount: 20,
                  builder: ((context, index) {
                    return ProductWidget();
                  }),
                  crossAxisCount: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
