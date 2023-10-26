import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import 'package:slicing_ui2/widget/QButton.dart';
import '../controller/slicing_2_controller.dart';

class Slicing2View extends StatefulWidget {
  const Slicing2View({Key? key}) : super(key: key);

  Widget build(context, Slicing2Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                QButton(
                  label: "SIMPAN",
                  onPressed: () async {
                    await showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Wrap(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text('Your order was placed!'),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Ok"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<Slicing2View> createState() => Slicing2Controller();
}
