import 'package:ecomerce/screens/cart/bottom_checkout.dart';
import 'package:ecomerce/screens/cart/cart_widget.dart';
import 'package:ecomerce/services/assets_manger.dart';
import 'package:ecomerce/widgets/empty_bag.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: AssetsManager.shoppingBasket,
              title: "Your cart is empty",
              subtitle:
                  "Looks like you didn't add anything yet to your cart \ngo head and start shopping now",
              buttonText: "Shop now",
            ),
          )
        : Scaffold(
            bottomSheet: CartBottomCheckout(),
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.shoppingCart),
              ),
              title: TitlesTextWidget(label: "cart (5)"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return CartWidget();
              },
              itemCount: 15,
            ),
          );
  }
}
