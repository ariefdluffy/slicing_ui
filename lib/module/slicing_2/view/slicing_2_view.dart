
import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../controller/slicing_2_controller.dart';

class Slicing2View extends StatefulWidget {
    const Slicing2View({Key? key}) : super(key: key);

    Widget build(context, Slicing2Controller controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Slicing2"),
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
    State<Slicing2View> createState() => Slicing2Controller();
}
    