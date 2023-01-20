import 'package:flutter/material.dart';
import 'package:pos_ui/core.dart';
import '../controller/transaksi_controller.dart';

class TransaksiView extends StatefulWidget {
  const TransaksiView({Key? key}) : super(key: key);

  Widget build(context, TransaksiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaksi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TransaksiView> createState() => TransaksiController();
}