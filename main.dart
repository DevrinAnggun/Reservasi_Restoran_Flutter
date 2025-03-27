import 'package:reservasi_restoran_flutter/screens/home_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ReservasiApp());
}

class ReservasiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservasi Restoran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
