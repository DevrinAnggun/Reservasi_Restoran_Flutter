// screens/history_screen.dart
import 'package:flutter/material.dart';
import 'package:reservasi_restoran/services/reservation_service.dart';
import '../models/reservation.dart';
import 'receipt_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Reservation> reservations = ReservationService().getReservations();

    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Reservasi')),
      body: ListView.builder(
        itemCount: reservations.length,
        itemBuilder: (context, index) {
          final reservation = reservations[index];
          return ListTile(
            title: Text('${reservation.restaurant.name} - ${reservation.date} ${reservation.time}'),
            subtitle: Text('Nama: ${reservation.customerName}, Jumlah Tamu: ${reservation.guests}'),
            trailing: IconButton(
              icon: const Icon(Icons.receipt),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReceiptScreen(reservation: reservation)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}