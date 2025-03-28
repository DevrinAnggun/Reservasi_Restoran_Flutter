// screens/receipt_screen.dart
import 'package:flutter/material.dart';
import '../models/reservation.dart';
import '../utils/print_helper.dart';

class ReceiptScreen extends StatelessWidget {
  final Reservation reservation;

  const ReceiptScreen({super.key, required this.reservation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Struk DP Reservasi')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Restoran: ${reservation.restaurant.name}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Nama: ${reservation.customerName}'),
            Text('Tanggal: ${reservation.date}'),
            Text('Waktu: ${reservation.time}'),
            Text('Jumlah Tamu: ${reservation.guests}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                PrintHelper.printReceipt(reservation);
              },
              child: const Text('Cetak Struk'),
            ),
          ],
        ),
      ),
    );
  }
}