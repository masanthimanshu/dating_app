import 'package:dating_app/components/discover_cards.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    Colors.deepPurple,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(width: double.infinity),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.8,
          child: DiscoverCard(itemColor: _colors),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Fluttertoast.showToast(
              msg: "Swipe Card Above",
              textColor: Colors.white,
              backgroundColor: Colors.pink,
            );
          },
          child: Image.asset("assets/images/buttons.png"),
        ),
      ],
    );
  }
}
