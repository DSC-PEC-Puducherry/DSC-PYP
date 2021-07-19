import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pec_yellow_pages/SplashScreen.dart';
import 'package:pec_yellow_pages/screen/providers/dark_theme.dart';
import 'package:pec_yellow_pages/screen/providers/theme_data.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeProvider = DarkThemeProvider();
  //saves the mode of color
  void getCurrentAppTheme() async {
    themeProvider.darkTheme = await themeProvider.darkThemeSaver.getTheme();
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
            return themeProvider;
          })
        ],

        //here the consumer is same as providers...
        child:
            Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'PecYellowPages',
            theme: Styles.themeData(themeProvider.darkTheme, context),
            home: splashScreen(), //HomeScreen(),
          );
        }));
  }
}


/*
ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: ksecondaryColor),
          bodyText1: TextStyle(color: ksecondaryColor),
        ),
      ),
      */