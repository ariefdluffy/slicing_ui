
import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../controller/slicing_4_controller.dart';

class Slicing4View extends StatefulWidget {
    const Slicing4View({Key? key}) : super(key: key);

    Widget build(context, Slicing4Controller controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Slicing4"),
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
    State<Slicing4View> createState() => Slicing4Controller();
}
    