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
        title: const Text('Detalles del Préstamo'),
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
                    const Text(
                      'Detalles del préstamo',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Monto del préstamo: S/. ${loanAmount.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Periodo en meses: $loanTerm',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Interés mensual: ${monthlyInterestRate.toStringAsFixed(2)} %',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Cuota mensual: S/. ${monthlyPayment.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Total de interés a pagar: S/. ${totalInterest.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Total a pagar: S/. ${totalPayment.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '🎉 Felicidades 🎉\nSu préstamo fue aprobado',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.home, size: 24),
              label: const Text('VOLVER'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
