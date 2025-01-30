import 'package:flutter/material.dart';

class LoanDetailsPage extends StatelessWidget {
  final double loanAmount;
  final int loanTerm;
  final double monthlyInterestRate;
  final double monthlyPayment;
  final double totalInterest;
  final double totalPayment;

  LoanDetailsPage({
    required this.loanAmount,
    required this.loanTerm,
    required this.monthlyInterestRate,
    required this.monthlyPayment,
    required this.totalInterest,
    required this.totalPayment,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del Préstamo'),
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
                      'Detalles del préstamo',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Monto del préstamo: S/. ${loanAmount.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Periodo en meses: $loanTerm',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Interés mensual: ${monthlyInterestRate.toStringAsFixed(2)} %',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Cuota mensual: S/. ${monthlyPayment.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Total de interés a pagar: S/. ${totalInterest.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Total a pagar: S/. ${totalPayment.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Regresa a la página anterior
                Navigator.pop(context);
              },
              child: Text('Volver'),
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
