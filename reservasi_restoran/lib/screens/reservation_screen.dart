import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class ReservationScreen extends StatelessWidget {
  final Restaurant restaurant;

  const ReservationScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reservasi di ${restaurant.name}')),
      body: Center(child: Text('Form Reservasi akan ditampilkan di sini')),
    );
  }
}
