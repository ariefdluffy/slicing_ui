import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 48.0,
                      width: 48,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        18.0,
                      ),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "January",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "\$ 500",
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      LinearProgressIndicator(
                        color: Colors.white,
                        // backgroundColor: Colors.white.withOpacity(0.4),
                        value: 0.6,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Daily spend target: \$16.67",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "DAILY SPENDS",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14.0,
                ),
                ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.histories[index];
                      return Container(
                        margin: const EdgeInsets.only(
                          bottom: 20.0,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                color: item["color"],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                              child: const Icon(
                                Icons.developer_board,
                                size: 24.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item["label"],
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "${item["price"]}",
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "${item["date"]}",
                              style: const TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "WISH LIST",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SingleChildScrollView(
                  controller: ScrollController(),
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
                    children:
                        List.generate(controller.histories.length, (index) {
                      var item = controller.histories[index];
                      return Container(
                        height: 74,
                        width: 74,
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: item["color"],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.developer_board,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
