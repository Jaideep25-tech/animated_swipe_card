import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';
import '../details_view.dart';
import '../models/cart_itme.dart';

class StackedCard extends StatelessWidget {
  const StackedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SwipeDeck(
        startIndex: 2,
        emptyIndicator: const SizedBox(
          child: Center(
            child: Text("Nothing Here"),
          ),
        ),
        cardSpreadInDegrees: 50.0,
        // Change the Spread of Background Cards
        onSwipeLeft: () {
          // print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
        },
        onSwipeRight: () {
          // print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
        },
        onChange: (index) {
          // print(colors[index]);
        },
        widgets: imageItems
            .map((image) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 300),
                        reverseTransitionDuration:
                            const Duration(milliseconds: 300),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ScaleTransition(
                          scale: animation,
                          child: CardDetailsView(
                              images: imageItems,
                              currentIndex: imageItems.indexOf(image)),
                        ),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child;
                        },
                      ),
                    );
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Image.asset(
                        image.image,
                        fit: BoxFit.cover,
                      )),
                ))
            .toList(),
      ),
    );
  }
}
