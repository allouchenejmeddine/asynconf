import 'package:asynconf/models/DayPlanning.dart';
import 'package:asynconf/models/PartOfDay.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import 'SlideCard.dart';
class CardStack extends StatefulWidget {
  final AnimationController controller;
  final DayPlanning dayPlanning;

  CardStack(this.controller, this.dayPlanning);

  @override
  _CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  late Animation<Offset> slideAnimation;
  late List<SlideCard> cardList;

  @override
  void initState() {
    super.initState();
    cardList = List.generate(
      widget.dayPlanning.planning.length, (index) => SlideCard(index, widget.dayPlanning.planning[index]),
    );
    slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1, 0.0),
    ).animate(
      CurvedAnimation(
        parent: widget.controller,
        curve: Curves.ease,
      ),
    );

    widget.controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.controller.reset();
        if(mounted) {
          setState(
              () {
                SlideCard slideCard = cardList.first;
                cardList.removeAt(0);
                cardList.add(slideCard);
              }
        );
        }
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: cardList.reversed.map(
            (item) {
          return Transform.translate(
            offset: Offset(0, -item.index * 5.0),
            child: SlideTransition(
              position: getSlideOffset(item.index),
              child: item,
            ),
          );
        },
      ).toList(),
    );
  }

  getSlideOffset(int cardIndex) {
    if (cardIndex == cardList.length - 1) {
      return slideAnimation;
    } else {
      return const AlwaysStoppedAnimation(Offset.zero);
    }
  }
}
