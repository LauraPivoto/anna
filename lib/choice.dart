import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

// ignore: use_key_in_widget_constructors
class SelecionarDispositivoPage extends StatefulWidget {
  @override
  _SelecionarDispositivoPage createState() => _SelecionarDispositivoPage();
}

class _SelecionarDispositivoPage extends State<SelecionarDispositivoPage> {
  List<BluetoothDevice> devices = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
    );
  }
}
