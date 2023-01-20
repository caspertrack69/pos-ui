import 'package:flutter/material.dart';
import 'package:pos_ui/core.dart';
import '../controller/produk_controller.dart';

class ProdukView extends StatefulWidget {
  const ProdukView({Key? key}) : super(key: key);

  Widget build(context, ProdukController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Produk"),
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
  State<ProdukView> createState() => ProdukController();
}