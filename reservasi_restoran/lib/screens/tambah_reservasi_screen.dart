import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/reservasi_provider.dart';

class TambahReservasiScreen extends StatefulWidget {
  @override
  _TambahReservasiScreenState createState() => _TambahReservasiScreenState();
}

class _TambahReservasiScreenState extends State<TambahReservasiScreen> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _mejaController = TextEditingController();

  void _tambahReservasi() {
    final provider = Provider.of<ReservasiProvider>(context, listen: false);
    provider.tambahReservasi(
      _namaController.text,
      _tanggalController.text,
      int.tryParse(_mejaController.text) ?? 1,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Reservasi Ditambahkan!")),
    );

    Navigator.pop(context); // Kembali ke Home
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Reservasi")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _namaController, decoration: InputDecoration(labelText: "Nama")),
            TextField(controller: _tanggalController, decoration: InputDecoration(labelText: "Tanggal")),
            TextField(controller: _mejaController, decoration: InputDecoration(labelText: "Nomor Meja")),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _tambahReservasi, child: Text("Simpan Reservasi")),
          ],
        ),
      ),
    );
  }
}
