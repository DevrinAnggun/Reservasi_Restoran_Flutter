import 'package:flutter/material.dart';

class HapusReservasiScreen extends StatefulWidget {
  @override
  _HapusReservasiScreenState createState() => _HapusReservasiScreenState();
}

class _HapusReservasiScreenState extends State<HapusReservasiScreen> {
  final TextEditingController _idController = TextEditingController();

  void _hapusReservasi() {
    String id = _idController.text;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Reservasi ID $id dihapus!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hapus Reservasi")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _idController,
              decoration: InputDecoration(labelText: "Masukkan ID Reservasi"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _hapusReservasi,
              child: Text("Hapus Reservasi"),
            ),
          ],
        ),
      ),
    );
  }
}
