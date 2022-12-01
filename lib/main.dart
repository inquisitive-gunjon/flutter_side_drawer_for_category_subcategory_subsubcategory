import 'package:complex_drawer_for_category_subcategory_subsubcategory/provider/category_provider.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/screen/drawer/landing_screen.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/theme/theme_data.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        }),
        ChangeNotifierProvider(create: (_) {
          return CategoryProvider();
        }),

      ],
      child:
      Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
        return MaterialApp(
          title: 'appShop',
          theme: Styles.themeData(themeChangeProvider.darkTheme, context),
          home: const LandingScreen(),
        );
      }
      ),
    );
  }
}
