import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import 'package:slicing_ui2/widget/theme_config.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "DASHBOARD SLICING",
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Row(
                children: [
                  Text(
                    "Latihan 1",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              GridView.builder(
                padding: const EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 12,
                ),
                itemCount: controller.judulMenu.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var judul = controller.judulMenu[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            // builder: (context) => const Slicing1View(),
                            builder: (context) => judul["navigasi"],
                          ));
                    },
                    child: Container(
                      // height: 50.0,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: Colors.black,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            NetworkImage(
                              judul["link_img"],
                            ),
                            size: 42.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            judul["label"],
                            style: const TextStyle(
                              fontSize: 16.0,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Row(
                children: [
                  Text(
                    "Latihan 2",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              GridView.builder(
                padding: const EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 12,
                ),
                itemCount: controller.itemLatihan2.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var judul = controller.itemLatihan2[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            // builder: (context) => const Slicing1View(),
                            builder: (context) => judul["navigasi"],
                          ));
                    },
                    child: Container(
                      // height: 50.0,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: Colors.black,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            NetworkImage(
                              judul["link_img"],
                            ),
                            size: 28.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            judul["label"],
                            style: const TextStyle(
                              fontSize: 12.0,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
