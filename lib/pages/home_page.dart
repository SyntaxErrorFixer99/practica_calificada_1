import 'package:flutter/material.dart';
import 'loan_calculator_page.dart'; // Importa la página de la calculadora

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Préstamos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Obtenga un préstamo bancario con solo unos pocos clics',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navega a la página de la calculadora
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoanCalculatorPage()),
                );
              },
              child: Text('Empezar'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
