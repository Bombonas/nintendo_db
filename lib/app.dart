import 'package:flutter/material.dart';
import 'layout_mobile_screen_0.dart';

// Crear el widget principal 'App' de tipus 'stateful'
class App extends StatefulWidget {
    const App({Key? key}) : super(key: key);
    // L'estat es defineix a la classe 'AppState'
    @override
    AppState createState() => AppState();
}

// Definir l'estat del widget 'App'
class AppState extends State<App> {
    // Definir la funció que escull el 'layout' a mostrar
    Widget _setLayout(BuildContext context) {
        // Aquí, més endavant escollirem mòbil o desktop
        return const LayoutMobileScreen0();
    }

    // Definir el contingut del widget 'App'
    @override
    Widget build(BuildContext context) {
        // Farem servir la base 'Material'
        return MaterialApp(
                debugShowCheckedModeBanner: false,
                // codi de title, theme, …
                home: _setLayout(context),
            );
    }
}
