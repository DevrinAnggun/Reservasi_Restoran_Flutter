import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/reservasi_provider.dart';

class TambahOrderScreen extends StatefulWidget {
  @override
  _TambahOrderScreenState createState() => _TambahOrderScreenState();
}

class _TambahOrderScreenState extends State<TambahOrderScreen> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _mejaController = TextEditingController();
  final TextEditingController _menuController = TextEditingController();

  void _tambahOrder() {
    final provider = Provider.of<ReservasiProvider>(context, listen: false);
    provider.tambahOrder(
      _namaController.text,
      int.tryParse(_mejaController.text) ?? 1,
      _menuController.text,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Order Ditambahkan!")),
    );

    Navigator.pop(context); // Kembali ke Home
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Order")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _namaController, decoration: InputDecoration(labelText: "Nama")),
            TextField(controller: _mejaController, decoration: InputDecoration(labelText: "Nomor Meja")),
            TextField(controller: _menuController, decoration: InputDecoration(labelText: "Menu Pesanan")),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _tambahOrder, child: Text("Simpan Order")),
          ],
        ),
      ),
    );
  }
}
