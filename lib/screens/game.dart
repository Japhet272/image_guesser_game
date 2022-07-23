import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/gameModel.dart';
import '../widgets/gamescreen.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  int index = 0;
  PageController controller = PageController(initialPage: 0);

//declaring a list of the instance of gameModel
  List<GameModel> ListGameModel = [
    GameModel(
      image: "assets/Images/Lion.jpg",
      answerA: "Goat",
      answerB: "Lion",
      answerC: "Pig",
      answerD: "Cat",
      correctAnswer: "Lion",
    ),
    GameModel(
      image: "assets/Images/Ronaldo.jpg",
      answerA: "Ronaldo",
      answerB: "Messi",
      answerC: "Lewandoski",
      answerD: "Sterling",
      correctAnswer: "Ronaldo",
    ),
    GameModel(
      image: "assets/Images/rolls royce.jpg",
      answerA: "Beast",
      answerB: "Benz",
      answerC: "Bmw",
      answerD: "Rolls royce",
      correctAnswer: "Rolls royce",
    ),
    GameModel(
      image: "assets/Images/Range Rover.jpg",
      answerA: "Camry Toyota",
      answerB: "Range Rover",
      answerC: "Venza",
      answerD: "Porsche",
      correctAnswer: "Range Rover",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (ind) {
                setState(() {
                  this.index = ind;
                });
              },
              itemCount: ListGameModel.length,
              itemBuilder: (context, index) {
                this.index = index;
                return GameScreen(
                  suggestiona: ListGameModel[index].answerA,
                  suggestionb: ListGameModel[index].answerB,
                  suggestionc: ListGameModel[index].answerC,
                  suggestiond: ListGameModel[index].answerD,
                  image: ListGameModel[index].image,
                  correctanswer:ListGameModel[index].correctAnswer,
                );
              },
            ),
          ),
          // a row inside our initial column, for our "NEXT" and "PREV" button

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (index == 0
                    ? SizedBox()
                    : Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: TextButton(
                            onPressed: () {controller.previousPage(duration: Duration(seconds:1), curve: Curves.decelerate);},
                            child: Text(
                              "Prev",
                              style: GoogleFonts.aldrich(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )))),

// a container for our "NEXT" button
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: TextButton(
                        onPressed: () {controller.nextPage(duration: Duration(seconds:1), curve: Curves.easeIn);},
                        child: Text(
                          "Next",
                          style: GoogleFonts.aldrich(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
