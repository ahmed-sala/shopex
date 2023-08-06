import 'package:ecomerce/providers/theme_provider.dart';
import 'package:ecomerce/services/assets_manger.dart';
import 'package:ecomerce/widgets/app_name_text.dart';
import 'package:ecomerce/widgets/subtitle_text.dart';
import 'package:ecomerce/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TitlesTextWidget(
                    label: 'please login to have ultimate access'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.background,
                        width: 3,
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.bing.com/th?id=OIP.6O9vO2GPqEZBg7cUJXAVgAHaJi&w=84&h=106&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitlesTextWidget(
                        label: "Ahmed Salah",
                      ),
                      SubtitleTextWidget(
                        label: "ahmeds66210@gmail.com",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitlesTextWidget(
                    label: "General",
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.orderSvg,
                    function: () {},
                    text: "All Orders",
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.wishlistSvg,
                    function: () {},
                    text: "Wishlist",
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.recent,
                    function: () {},
                    text: "Viewed recently",
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.address,
                    function: () {},
                    text: "Address",
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TitlesTextWidget(label: "Settings"),
                  SizedBox(
                    height: 7,
                  ),
                  SwitchListTile(
                    secondary: Image.asset(
                      AssetsManager.theme,
                      height: 30,
                    ),
                    title: Text(
                      themeProvider.getIsDarkTheme ? "Dark mode" : "Light mode",
                    ),
                    value: themeProvider.getIsDarkTheme,
                    onChanged: (value) {
                      themeProvider.setDarkTheme(themeValue: value);
                    },
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                ),
                onPressed: () {},
                icon: Icon(IconlyBold.login),
                label: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String imagePath, text;
  final Function function;
  CustomListTile({
    required this.imagePath,
    required this.function,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(
        imagePath,
        height: 30,
      ),
      title: SubtitleTextWidget(
        label: text,
      ),
      trailing: Icon(
        IconlyLight.arrowRight2,
      ),
    );
  }
}
