import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/reservasi_provider.dart';

class LihatOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderList = Provider.of<ReservasiProvider>(context).orderList;

    return Scaffold(
      appBar: AppBar(title: Text("Lihat Order")),
      body: orderList.isEmpty
          ? Center(child: Text("Belum ada order"))
          : ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, index) {
                final order = orderList[index];
                return ListTile(
                  title: Text(order.nama),
                  subtitle: Text("Meja: ${order.meja}, Menu: ${order.menu}"),
                );
              },
            ),
    );
  }
}
