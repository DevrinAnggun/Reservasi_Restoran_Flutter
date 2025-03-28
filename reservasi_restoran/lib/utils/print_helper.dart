// utils/print_helper.dart
import '../models/reservation.dart';

class PrintHelper {
  static void printReceipt(Reservation reservation) {
    print('--- Struk DP Reservasi ---');
    print('Restoran: ${reservation.restaurant.name}');
    print('Nama: ${reservation.customerName}');
    print('Tanggal: ${reservation.date}');
    print('Waktu: ${reservation.time}');
    print('Jumlah Tamu: ${reservation.guests}');
    print('--------------------------');
  }
}
