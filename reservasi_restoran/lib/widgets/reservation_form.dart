// widgets/reservation_form.dart
import 'package:flutter/material.dart';

class ReservationForm extends StatefulWidget {
  final Function(String, String, String, int) onSubmit;

  const ReservationForm({super.key, required this.onSubmit});

  @override
  _ReservationFormState createState() => _ReservationFormState();
}

class _ReservationFormState extends State<ReservationForm> {
  final _nameController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _guestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Nama Pemesan'),
          ),
          TextField(
            controller: _dateController,
            decoration: const InputDecoration(labelText: 'Tanggal Reservasi'),
          ),
          TextField(
            controller: _timeController,
            decoration: const InputDecoration(labelText: 'Waktu Reservasi'),
          ),
          TextField(
            controller: _guestController,
            decoration: const InputDecoration(labelText: 'Jumlah Tamu'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              widget.onSubmit(
                _nameController.text,
                _dateController.text,
                _timeController.text,
                int.parse(_guestController.text),
              );
            },
            child: const Text('Konfirmasi Reservasi'),
          ),
        ],
      ),
    );
  }
}
