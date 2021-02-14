import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/routes/routes.dart';
//import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
        ],
      supportedLocales: [
          const Locale('en', 'US'), // English, no country code
          const Locale('es', 'ES'), // Arabic, no country code
        ],
      //home: HomePage()
        initialRoute: '/',
        routes: getApllicationRoutes(),
        onGenerateRoute: (RouteSettings settings){
          print('Ruta llamada: ${ settings.name }');
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage()
          );
        },
      
    );
      
  }
}