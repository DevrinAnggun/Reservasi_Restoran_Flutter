// services/reservation_service.dart
import '../models/reservation.dart';

class ReservationService {
  final List<Reservation> _reservations = [];

  void addReservation(Reservation reservation) {
    _reservations.add(reservation);
  }

  void editReservation(int index, Reservation updatedReservation) {
    if (index >= 0 && index < _reservations.length) {
      _reservations[index] = updatedReservation;
    }
  }

  void deleteReservation(int index) {
    if (index >= 0 && index < _reservations.length) {
      _reservations.removeAt(index);
    }
  }

  List<Reservation> getReservations() {
    return _reservations;
  }
}
