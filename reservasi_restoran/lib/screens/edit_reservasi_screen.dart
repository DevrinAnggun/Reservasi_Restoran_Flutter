import 'package:flutter/material.dart';

class EditReservasiScreen extends StatefulWidget {
  @override
  _EditReservasiScreenState createState() => _EditReservasiScreenState();
}

class _EditReservasiScreenState extends State<EditReservasiScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();

  void _editReservasi() {
    String id = _idController.text;
    String nama = _namaController.text;
    String tanggal = _tanggalController.text;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Reservasi ID $id diperbarui: $nama - $tanggal")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Reservasi")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _idController, decoration: InputDecoration(labelText: "ID Reservasi")),
            TextField(controller: _namaController, decoration: InputDecoration(labelText: "Nama")),
            TextField(controller: _tanggalController, decoration: InputDecoration(labelText: "Tanggal")),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _editReservasi, child: Text("Simpan Perubahan")),
          ],
        ),
      ),
    );
  }
}
