import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/reservasi_provider.dart';

class LihatReservasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final reservasiList = Provider.of<ReservasiProvider>(context).reservasiList;

    return Scaffold(
      appBar: AppBar(title: Text("Lihat Reservasi")),
      body: reservasiList.isEmpty
          ? Center(child: Text("Belum ada reservasi"))
          : ListView.builder(
              itemCount: reservasiList.length,
              itemBuilder: (context, index) {
                final reservasi = reservasiList[index];
                return ListTile(
                  title: Text(reservasi.nama),
                  subtitle: Text("Tanggal: ${reservasi.tanggal}, Meja: ${reservasi.meja}"),
                );
              },
            ),
    );
  }
}
