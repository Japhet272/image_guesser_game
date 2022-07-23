
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GameScreen extends StatefulWidget {
GameScreen({
Key? key,
required this.suggestiona,
required this.suggestionb,
required this.suggestionc,
required this.suggestiond,
required this.correctanswer,
required this.image,
}) : super(key: key);

final String? suggestiona;
final String? suggestionb;
final String? suggestionc;
final String? suggestiond;
final String? correctanswer;
final String? image;

@override
State<GameScreen> createState() => _GameScreenState();
}
class _GameScreenState extends State<GameScreen> {
  bool answerisA = false,
      answerisB = false,
      answerisC = false,
      answerisD = false;

  bool isClickedA = false,
      isClickedB = false,
      isClickedC = false,
      isClickedD = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            SizedBox(
              child: Material(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                elevation: 20,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      widget.image!,
                      fit: BoxFit.fitWidth,

                    )),
              ),
            ),
            Flexible(
                child: SizedBox(
                  height: 500,
                  width: 500,
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "What Is My Name",
                          style: GoogleFonts.aldrich(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 2),
                            color: isClickedA && answerisA
                                ? Colors.green
                                : isClickedA && !answerisA
                                ? Colors.red
                                : Colors.purple,
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isClickedA = true;
                              });
                              if (widget.suggestiona == widget.correctanswer) {
                                setState(() {
                                  answerisA = true;
                                  isClickedA = true;
                                });
                              } else if (widget.suggestionb == widget.correctanswer) {
                                setState(() {
                                  answerisB = true;
                                  isClickedB = true;
                                });
                              } else if (widget.suggestionc == widget.correctanswer) {
                                setState(() {
                                  answerisC = true;
                                  isClickedC = true;
                                });
                              } else if (widget.suggestiond == widget.correctanswer) {
                                setState(() {
                                  answerisD = true;
                                  isClickedD = true;
                                });
                              }
                            },
                            child: Row(
                              children: [
                                Text(
                                  "a.${widget.suggestiona}",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.aldrich(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 2),
                            color: isClickedB && answerisB
                                ? Colors.green
                                : isClickedB && !answerisB
                                ? Colors.red
                                : Colors.purple,
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isClickedB = true;
                              });
                              if (widget.suggestiona == widget.correctanswer) {
                                setState(() {
                                  answerisA = true;
                                  isClickedA = true;
                                });
                              } else if (widget.suggestionb == widget.correctanswer) {
                                setState(() {
                                  answerisB = true;
                                  isClickedB = true;
                                });
                              } else if (widget.suggestionc == widget.correctanswer) {
                                setState(() {
                                  answerisC = true;
                                  isClickedC = true;
                                });
                              } else if (widget.suggestiond == widget.correctanswer) {
                                setState(() {
                                  answerisD = true;
                                  isClickedD = true;
                                });
                              }
                            },
                            child: Row(
                              children: [
                                Text(
                                  "b.${widget.suggestionb}",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.aldrich(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 2),
                            color: isClickedC && answerisC
                                ? Colors.green
                                : isClickedC && !answerisC
                                ? Colors.red
                                : Colors.purple,
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isClickedC = true;
                              });
                              if (widget.suggestiona == widget.correctanswer) {
                                setState(() {
                                  answerisA = true;
                                  isClickedA = true;
                                });
                              } else if (widget.suggestionb == widget.correctanswer) {
                                setState(() {
                                  answerisB = true;
                                  isClickedB = true;
                                });
                              } else if (widget.suggestionc == widget.correctanswer) {
                                setState(() {
                                  answerisC = true;
                                  isClickedC = true;
                                });
                              } else if (widget.suggestiond == widget.correctanswer) {
                                setState(() {
                                  answerisD = true;
                                  isClickedD = true;
                                });
                              }
                            },
                            child: Row(
                              children: [
                                Text(
                                  "c.${widget.suggestionc}",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.aldrich(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 2),
                            color: isClickedD && answerisD
                                ? Colors.green
                                : isClickedD && !answerisD
                                ? Colors.red
                                : Colors.purple,
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                isClickedD = true;
                              });
                              if (widget.suggestiona == widget.correctanswer) {
                                setState(() {
                                  answerisA = true;
                                  isClickedA = true;
                                });
                              } else if (widget.suggestionb == widget.correctanswer) {
                                setState(() {
                                  answerisB = true;
                                  isClickedB = true;
                                });
                              } else if (widget.suggestionc == widget.correctanswer) {
                                setState(() {
                                  answerisC = true;
                                  isClickedC = true;
                                });
                              } else if (widget.suggestiond == widget.correctanswer) {
                                setState(() {
                                  answerisD = true;
                                  isClickedD = true;
                                });
                              }
                            },
                            child: Row(
                              children: [
                                Text(
                                  "d.${widget.suggestiond}",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.aldrich(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                ))
          ],
        ));
  }
}
