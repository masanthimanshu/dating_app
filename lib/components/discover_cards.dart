import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swipe_cards/swipe_cards.dart';

class DiscoverCard extends StatefulWidget {
  const DiscoverCard({Key? key, required this.itemColor}) : super(key: key);

  final List<Color> itemColor;

  @override
  State<DiscoverCard> createState() => _DiscoverCardState();
}

class _DiscoverCardState extends State<DiscoverCard> {
  final List<SwipeItem> _swipeItems = [];
  late MatchEngine _matchEngine;

  _addCards() {
    for (int i = 0; i < widget.itemColor.length; i++) {
      _swipeItems.add(
        SwipeItem(
          likeAction: () => Fluttertoast.showToast(msg: "Liked $i"),
          nopeAction: () => Fluttertoast.showToast(msg: "Disliked $i"),
          superlikeAction: () => Fluttertoast.showToast(msg: "Super Liked $i"),
        ),
      );
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
  }

  @override
  void initState() {
    _addCards();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SwipeCards(
      upSwipeAllowed: true,
      onStackFinished: () {},
      matchEngine: _matchEngine,
      itemBuilder: (e, index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.itemColor[index],
          ),
        );
      },
    );
  }
}
