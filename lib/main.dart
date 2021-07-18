import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pec_yellow_pages/Colors.dart';
import 'package:pec_yellow_pages/screen/home/HomeScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {

        return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PecYellowPages',
      
      /*theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: ksecondaryColor),
          bodyText1: TextStyle(color: ksecondaryColor),
        ),
      ),*/

      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData.dark(),
      themeMode: currentMode,

      home: HomeScreen(),
    );
  }
        );
}
}
