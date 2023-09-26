import 'package:flutter/material.dart';

class LayoutPersonatge extends StatelessWidget {
    final dynamic itemData;

    // Relacionar els colors amb el text que els defineix
    final Map<String, Color> colorMap = {
        'red': Colors.red,
        'blue': Colors.blue,
        'green': Colors.green,
        'orange': Colors.orange,
        'brown': Colors.brown,
        'grey': Colors.grey,
    };

    // Constructor
    LayoutPersonatge({Key? key, required this.itemData}) : super(key: key);

    // Retornar un 'Color' a partir del text, fent servir el mapa de colors anterior
    Color getColorFromString(String colorString) {
        return colorMap[colorString.toLowerCase()] ?? Colors.black;
    }

	// ... aquí la funció ‘build’ definida a la següent diapositiva
}
