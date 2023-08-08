import 'package:ecomerce/consts/theme_data.dart';
import 'package:ecomerce/providers/theme_provider.dart';
import 'package:ecomerce/root_screen.dart';
import 'package:ecomerce/screens/inner_screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return ThemeProvider();
          },
        ),
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Shopex',
          theme: Style.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: RootScreen(),
          routes: {ProductDetail.routeName: (_) => const ProductDetail()},
        );
      }),
    );
  }
}
