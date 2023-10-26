import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../controller/slicing_3_controller.dart';

class Slicing3View extends StatefulWidget {
  const Slicing3View({Key? key}) : super(key: key);

  Widget build(context, Slicing3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Slicing3"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<Slicing3View> createState() => Slicing3Controller();
}
