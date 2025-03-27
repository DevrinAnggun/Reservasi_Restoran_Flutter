import 'package:flutter/material.dart';
import '../screens/order_screen.dart';
import '../screens/receipt_screen.dart';
import '../widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sistem Reservasi Restoran")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          MenuButton("Tambah Reservasi", () {}),
          MenuButton("Lihat Reservasi", () {}),
          MenuButton("Hapus Reservasi", () {}),
          MenuButton("Tambah Order", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderScreen()),
            );
          }),
          MenuButton("Lihat Order", () {}),
          MenuButton("Hapus Order", () {}),
          MenuButton("Cetak Struk DP", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReceiptScreen()),
            );
          }),
          MenuButton("Keluar", () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
