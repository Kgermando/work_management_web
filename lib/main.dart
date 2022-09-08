import 'package:flutter_localizations/flutter_localizations.dart'
    show GlobalMaterialLocalizations;
import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:work_management_web/src/providers/controller.dart';
import 'package:work_management_web/src/providers/theme_provider.dart';
import 'package:work_management_web/src/routes/routes.dart';
import 'package:work_management_web/src/utils/info_system.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          ChangeNotifierProvider(create: (context) => Controller()),
        ],
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: InfoSystem().name(),
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            initialRoute: SolutionRoutes.presentation,
            routes: routes,
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
            supportedLocales: const [Locale('fr', 'FR'), Locale('en', 'EN')],
          );
        });
  }
}
