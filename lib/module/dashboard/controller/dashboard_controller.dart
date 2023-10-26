import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import 'package:slicing_ui2/widget/theme_config.dart';

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

  // List histories = [
  //   {
  //     "id": 1,
  //     "label": "Net Banking",
  //     "color": Colors.blue,
  //     "price": "\$ 345",
  //     "date": "Today"
  //   },
  //   {
  //     "id": 2,
  //     "label": "Net Banking",
  //     "color": Colors.red,
  //     "price": "\$ 345",
  //     "date": "23 Jan 2023"
  //   },
  //   {
  //     "id": 3,
  //     "label": "Net Banking",
  //     "color": Colors.green,
  //     "price": "\$ 345",
  //     "date": "24 Jan 2023"
  //   },
  //   {
  //     "id": 4,
  //     "label": "Net Banking",
  //     "color": Colors.blueAccent,
  //     "price": "\$ 345",
  //     "date": "24 Jan 2023"
  //   },
  //   {
  //     "id": 5,
  //     "label": "Net Banking",
  //     "color": Colors.redAccent,
  //     "price": "\$ 345",
  //     "date": "24 Jan 2023"
  //   },
  //   {
  //     "id": 6,
  //     "label": "Net Banking",
  //     "color": Colors.grey,
  //     "price": "\$ 345",
  //     "date": "24 Jan 2023"
  //   }
  // ];

  List judulMenu = [
    {
      "id": 1,
      "label": "Slicing 1",
      "color": secondaryColor,
      "navigasi": const Slicing1View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/biscuit-10058679-8238382.png?f=webp&w=256"
    },
    {
      "id": 2,
      "label": "Slicing 2",
      "color": successColor,
      "navigasi": const Slicing2View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/fridge-10058658-8238361.png?f=webp&w=256"
    },
    {
      "id": 3,
      "label": "Slicing 3",
      "color": colorCyan,
      "navigasi": const Slicing3View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 4,
      "label": "Slicing 4",
      "color": primaryColor,
      "navigasi": const Slicing4View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 5,
      "label": "Slicing 5",
      "color": Colors.redAccent,
      "navigasi": const Slicing5View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 6,
      "label": "Slicing 6",
      "color": Colors.grey,
      "navigasi": const Slicing6View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    }
  ];

  List itemLatihan2 = [
    {
      "id": 1,
      "label": "EDashboard 1",
      "color": secondaryColor,
      "navigasi": const Slicing1View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/biscuit-10058679-8238382.png?f=webp&w=256"
    },
    {
      "id": 2,
      "label": "EDashboard 2",
      "color": successColor,
      "navigasi": const Slicing2View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/fridge-10058658-8238361.png?f=webp&w=256"
    },
    {
      "id": 3,
      "label": "EDashboard 3",
      "color": colorCyan,
      "navigasi": const Slicing3View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 4,
      "label": "EDashboard 4",
      "color": primaryColor,
      "navigasi": const Slicing4View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 5,
      "label": "EDashboard 5",
      "color": Colors.redAccent,
      "navigasi": const Slicing5View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 6,
      "label": "EDashboard 6",
      "color": Colors.grey,
      "navigasi": const Slicing6View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 7,
      "label": "EDashboard 7",
      "color": Colors.grey,
      "navigasi": const Slicing6View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    },
    {
      "id": 8,
      "label": "EDashboard 8",
      "color": Colors.grey,
      "navigasi": const Slicing6View(),
      "link_img":
          "https://cdn.iconscout.com/icon/premium/png-512-thumb/plate-10058684-8238387.png?f=webp&w=256"
    }
  ];
}
