import 'package:flutter/material.dart';
import 'package:pos_ui/state_util.dart';
import '../view/transaksi_view.dart';

class TransaksiController extends State<TransaksiView> implements MvcController {
  static late TransaksiController instance;
  late TransaksiView view;

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