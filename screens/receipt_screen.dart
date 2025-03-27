import 'package:flutter/material.dart';
import '../services/order_service.dart';

class ReceiptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orders = OrderService.getOrders();
    double totalHarga = orders.fold(0, (sum, order) => sum + (order.quantity * 10000));
    
    return Scaffold(
      appBar: AppBar(title: Text("Struk DP")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("=========== STRUK DP RESTORAN ===========", textAlign: TextAlign.center),
            SizedBox(height: 10),
            ...orders.map((order) => Text("${order.tableNo}. ${order.menu} x${order.quantity}")),
            Divider(),
            Text("Total Harga: Rp ${totalHarga.toStringAsFixed(2)}"),
            Text("DP 50%: Rp ${(totalHarga * 0.5).toStringAsFixed(2)}"),
            Divider(),
            Text("Terima kasih telah memesan!", textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
