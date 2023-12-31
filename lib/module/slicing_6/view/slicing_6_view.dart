import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../controller/slicing_6_controller.dart';

class Slicing6View extends StatefulWidget {
  const Slicing6View({Key? key}) : super(key: key);

  Widget build(context, Slicing6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Slicing6"),
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
  State<Slicing6View> createState() => Slicing6Controller();
}
