import 'package:flutter/material.dart';

class LayoutVideoJoc extends StatelessWidget{
    final dynamic itemData;

    final Map<String, Color> colorMap = {
        'red': Colors.red,
        'blue': Colors.blue,
        'green': Colors.green,
        'orange': Colors.orange,
        'brown': Colors.brown,
        'grey': Colors.grey,
    };

    LayoutVideoJoc({Key? key, required this.itemData}) : super(key: key);

    // Retornar un 'Color' a partir del text, fent servir el mapa de colors anterior
    Color getColorFromString(String colorString) {
        return colorMap[colorString.toLowerCase()] ?? Colors.black;
    }

    @override
    Widget build(BuildContext context) {
        return SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    // Ocupar la meitat superior de l'espai amb la imatge
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 100.0,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Image.asset('assets/images/${itemData["imatge"]}', fit: BoxFit.contain, ),
                    ),
                    // Ocupar la meitat inferior de l'espai amb els textos
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text("${itemData['nom']}",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                const SizedBox(height: 10),
                                const SizedBox(height: 10),
                                Text(itemData['any'].toString()),
                                Text(itemData['tipus']),
                                SizedBox(
                                  width: 200,
                                  child: Text(itemData['descripcio'].toString(),
                                          textAlign: TextAlign.center,)
                                  )
                            ],
                        ),
                    ),
                ],
            ),
        );
    }
}