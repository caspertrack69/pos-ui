import 'package:flutter/material.dart';
import 'package:pos_ui/state_util.dart';
import '../view/produk_view.dart';

class ProdukController extends State<ProdukView> implements MvcController {
  static late ProdukController instance;
  late ProdukView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}