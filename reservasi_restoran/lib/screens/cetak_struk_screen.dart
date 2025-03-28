import 'package:flutter/material.dart';

class CetakStrukScreen extends StatefulWidget {
  @override
  _CetakStrukScreenState createState() => _CetakStrukScreenState();
}

class _CetakStrukScreenState extends State<CetakStrukScreen> {
  final TextEditingController _idController = TextEditingController();

  void _cetakStruk() {
    String id = _idController.text;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Struk DP untuk Reservasi ID $id dicetak!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cetak Struk DP")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _idController, decoration: InputDecoration(labelText: "ID Reservasi")),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _cetakStruk, child: Text("Cetak Struk")),
          ],
        ),
      ),
    );
  }
}
