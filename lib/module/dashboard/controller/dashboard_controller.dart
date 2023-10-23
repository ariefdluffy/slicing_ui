import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List histories = [
    {
      "id": 1,
      "label": "Net Banking",
      "color": Colors.blue,
      "price": "\$ 345",
      "date": "Today"
    },
    {
      "id": 2,
      "label": "Net Banking",
      "color": Colors.red,
      "price": "\$ 345",
      "date": "23 Jan 2023"
    },
    {
      "id": 3,
      "label": "Net Banking",
      "color": Colors.green,
      "price": "\$ 345",
      "date": "24 Jan 2023"
    },
    {
      "id": 4,
      "label": "Net Banking",
      "color": Colors.blueAccent,
      "price": "\$ 345",
      "date": "24 Jan 2023"
    },
    {
      "id": 5,
      "label": "Net Banking",
      "color": Colors.redAccent,
      "price": "\$ 345",
      "date": "24 Jan 2023"
    },
    {
      "id": 6,
      "label": "Net Banking",
      "color": Colors.grey,
      "price": "\$ 345",
      "date": "24 Jan 2023"
    }
  ];
}
