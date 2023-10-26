import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../controller/slicing_5_controller.dart';

class Slicing5View extends StatefulWidget {
  const Slicing5View({Key? key}) : super(key: key);

  Widget build(context, Slicing5Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Slicing5"),
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
  State<Slicing5View> createState() => Slicing5Controller();
}
