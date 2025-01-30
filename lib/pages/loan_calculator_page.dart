import 'package:flutter/material.dart';
import 'dart:math'; // Importa la biblioteca math para usar pow
import 'loan_details_page.dart'; // Importa la página de detalles

class LoanCalculatorPage extends StatefulWidget {
  @override
  _LoanCalculatorPageState createState() => _LoanCalculatorPageState();
}

class _LoanCalculatorPageState extends State<LoanCalculatorPage> {
  double loanAmount = 10000.0;
  int loanTerm = 24;
  double annualInterestRate = 44.0;

  void _calculateLoan() {
    double monthlyInterestRate = annualInterestRate / 12 / 100;
    int numberOfPayments = loanTerm;

    // Usa pow de la biblioteca dart:math
    double monthlyPayment = (loanAmount * monthlyInterestRate) /
        (1 - (1 / pow(1 + monthlyInterestRate, numberOfPayments)));
    double totalPayment = monthlyPayment * numberOfPayments;

    // Navega a la página de detalles con los resultados
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoanDetailsPage(
          loanAmount: loanAmount,
          loanTerm: loanTerm,
          monthlyInterestRate: monthlyInterestRate * 100,
          monthlyPayment: monthlyPayment,
          totalInterest: totalPayment - loanAmount,
          totalPayment: totalPayment,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Préstamos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Monto del préstamo',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: loanAmount,
                      min: 1000,
                      max: 50000,
                      divisions: 49,
                      label: 'S/. ${loanAmount.toStringAsFixed(2)}',
                      onChanged: (value) {
                        setState(() {
                          loanAmount = value;
                        });
                      },
                    ),
                    Text(
                      'S/. ${loanAmount.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Plazo del préstamo',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: loanTerm.toDouble(),
                      min: 6,
                      max: 36,
                      divisions: 30,
                      label: '$loanTerm meses',
                      onChanged: (value) {
                        setState(() {
                          loanTerm = value.toInt();
                        });
                      },
                    ),
                    Text(
                      '$loanTerm meses',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Tasa de interés anual',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: annualInterestRate,
                      min: 10,
                      max: 50,
                      divisions: 40,
                      label: '${annualInterestRate.toStringAsFixed(2)} %',
                      onChanged: (value) {
                        setState(() {
                          annualInterestRate = value;
                        });
                      },
                    ),
                    Text(
                      '${annualInterestRate.toStringAsFixed(2)} %',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateLoan,
              child: Text('Calcular'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
