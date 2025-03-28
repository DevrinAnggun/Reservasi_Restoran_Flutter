// models/reservation.dart
import 'restaurant.dart';

class Reservation {
  final String customerName;
  final String date;
  final String time;
  final int guests;
  final Restaurant restaurant;

  Reservation({
    required this.customerName,
    required this.date,
    required this.time,
    required this.guests,
    required this.restaurant,
  });
}