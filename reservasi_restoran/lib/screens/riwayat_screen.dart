import 'package:flutter/material.dart';

class RiwayatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Riwayat Reservasi & Order")),
      body: ListView.builder(
        itemCount: 5, // Contoh data
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Riwayat #$index"),
            subtitle: Text("Reservasi & Order Selesai untuk Pelanggan $index"),
          );
        },
      ),
    );
  }
}
