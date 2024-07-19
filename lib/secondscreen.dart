import 'package:flutter/material.dart';
import 'package:flutter_application_1/mapscreen.dart';

class Secondpage extends StatelessWidget {

  final String data;

  const Secondpage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Mostrar Mapa'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MapScreen()));
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Volver a la Primera Pantalla'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}