import 'package:flutter/material.dart';
import 'secondscreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Definimos dos números y su multiplicación
    int number1 = 5;
    int number2 = 7;
    int result = number1 * number2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Multiplicación: $number1 x $number2'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Ir a la Segunda Pantalla'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondScreen(data: 'El resultado es: $result'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
