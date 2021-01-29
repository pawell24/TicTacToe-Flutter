import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final List cards;
  final Function setCard;
  final Function resetGame;

  Game(this.cards, this.setCard, this.resetGame);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
          actions: [IconButton(icon: Icon(Icons.replay), onPressed: resetGame)],
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: cards.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () => setCard(index),
                child: Card(
                  child: Center(
                    child: Text(
                      cards[index],
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
