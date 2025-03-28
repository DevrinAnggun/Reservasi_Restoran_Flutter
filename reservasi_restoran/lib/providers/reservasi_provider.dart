import 'package:flutter/material.dart';

class Reservasi {
  final String nama;
  final String tanggal;
  final int meja;

  Reservasi({required this.nama, required this.tanggal, required this.meja});
}

class Order {
  final String nama;
  final int meja;
  final String menu;

  Order({required this.nama, required this.meja, required this.menu});
}

class ReservasiProvider with ChangeNotifier {
  final List<Reservasi> _reservasiList = [];
  final List<Order> _orderList = [];

  List<Reservasi> get reservasiList => _reservasiList;
  List<Order> get orderList => _orderList;

  void tambahReservasi(String nama, String tanggal, int meja) {
    _reservasiList.add(Reservasi(nama: nama, tanggal: tanggal, meja: meja));
    notifyListeners();
  }

  void tambahOrder(String nama, int meja, String menu) {
    _orderList.add(Order(nama: nama, meja: meja, menu: menu));
    notifyListeners();
  }
}
