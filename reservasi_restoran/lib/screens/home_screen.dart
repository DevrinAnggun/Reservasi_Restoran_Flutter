import 'package:flutter/material.dart';
import 'tambah_reservasi_screen.dart';
import 'lihat_reservasi_screen.dart';
import 'hapus_reservasi_screen.dart';
import 'tambah_order_screen.dart';
import 'lihat_order_screen.dart';
import 'hapus_order_screen.dart';
import 'edit_reservasi_screen.dart';
import 'riwayat_screen.dart';
import 'cetak_struk_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reservasi Restoran")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "=== RESERVASI RESTORAN ===",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  menuButton(context, "1. Tambah Reservasi", Colors.blue, TambahReservasiScreen()),
                  menuButton(context, "2. Lihat Reservasi", Colors.blue, LihatReservasiScreen()),
                  menuButton(context, "3. Hapus Reservasi", Colors.blue, HapusReservasiScreen()),
                  menuButton(context, "4. Tambah Order", Colors.blue, TambahOrderScreen()),
                  menuButton(context, "5. Lihat Order", Colors.blue, LihatOrderScreen()),
                  menuButton(context, "6. Hapus Order", Colors.blue, HapusOrderScreen()),
                  menuButton(context, "7. Edit Reservasi", Colors.blue, EditReservasiScreen()),
                  menuButton(context, "8. Riwayat Reservasi & Order Selesai", Colors.blue, RiwayatScreen()),
                  menuButton(context, "9. Cetak Struk DP", Colors.blue, CetakStrukScreen()),
                  menuButton(context, "10. Keluar", Colors.blue, null, isExit: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuButton(BuildContext context, String title, Color color, Widget? screen, {bool isExit = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(vertical: 12),
        ),
        onPressed: () {
          if (isExit) {
            // Menutup aplikasi
            Navigator.of(context).pop();
          } else if (screen != null) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
          }
        },
        child: Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
