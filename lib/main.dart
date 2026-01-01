import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enums/box_state.dart';
import 'package:tic_tac_toe/enums/game_state.dart';

import 'widget/box_state_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCrossTurn = true;
  GameState gameState = GameState.gameInprogress;

  BoxState a = BoxState.empty;

  BoxState b = BoxState.empty;

  BoxState c = BoxState.empty;

  BoxState d = BoxState.empty;

  BoxState e = BoxState.empty;

  BoxState f = BoxState.empty;

  BoxState g = BoxState.empty;

  BoxState h = BoxState.empty;

  BoxState i = BoxState.empty;

  void checkGameState() {
    // Check rows, columns, and diagonals for a win
    //first row
    if (a != BoxState.empty && a == b && b == c) {
      gameState = a == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    //second row
    if (d != BoxState.empty && d == e && e == f) {
      gameState = d == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    //third row
    if (g != BoxState.empty && g == h && h == i) {
      gameState = g == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    //first column
    if (a != BoxState.empty && a == d && d == g) {
      gameState = a == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    //second column
    if (b != BoxState.empty && b == e && e == h) {
      gameState = b == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    //third column
    if (c != BoxState.empty && c == f && f == i) {
      gameState = c == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    //diagonal \
    if (a != BoxState.empty && a == e && e == i) {
      gameState = a == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    //diagonal /
    if (c != BoxState.empty && c == e && e == g) {
      gameState = c == BoxState.cross
          ? GameState.crosswin
          : GameState.circlewin;
      return;
    }
    // Check for draw
    if (a != BoxState.empty &&
        b != BoxState.empty &&
        c != BoxState.empty &&
        d != BoxState.empty &&
        e != BoxState.empty &&
        f != BoxState.empty &&
        g != BoxState.empty &&
        h != BoxState.empty &&
        i != BoxState.empty) {
      gameState = GameState.draw;
      return;
    } else {
      gameState = GameState.gameInprogress;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Tic Tac Toe'))),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      "Turn ${isCrossTurn ? "Cross" : "Circle"}",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: GridView.count(
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                    crossAxisCount: 3,
                    children: [
                      InkWell(
                        onTap: () {
                          print("a taped");
                          setState(() {
                            if (a == BoxState.empty) {
                              if (isCrossTurn) {
                                a = BoxState.cross;
                              } else {
                                a = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: a),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("b taped");
                          setState(() {
                            if (b == BoxState.empty) {
                              if (isCrossTurn) {
                                b = BoxState.cross;
                              } else {
                                b = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: b),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("c taped");
                          setState(() {
                            if (c == BoxState.empty) {
                              if (isCrossTurn) {
                                c = BoxState.cross;
                              } else {
                                c = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: c),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("d taped");
                          setState(() {
                            if (d == BoxState.empty) {
                              if (isCrossTurn) {
                                d = BoxState.cross;
                              } else {
                                d = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: d),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("e taped");
                          setState(() {
                            if (e == BoxState.empty) {
                              if (isCrossTurn) {
                                e = BoxState.cross;
                              } else {
                                e = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: e),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("f taped");
                          setState(() {
                            if (f == BoxState.empty) {
                              if (isCrossTurn) {
                                f = BoxState.cross;
                              } else {
                                f = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: f),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("g taped");
                          setState(() {
                            if (g == BoxState.empty) {
                              if (isCrossTurn) {
                                g = BoxState.cross;
                              } else {
                                g = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: g),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("h taped");
                          setState(() {
                            if (h == BoxState.empty) {
                              if (isCrossTurn) {
                                h = BoxState.cross;
                              } else {
                                h = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: h),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("i taped");
                          setState(() {
                            if (i == BoxState.empty) {
                              if (isCrossTurn) {
                                i = BoxState.cross;
                              } else {
                                i = BoxState.circle;
                              }
                              isCrossTurn = !isCrossTurn;
                              checkGameState();
                            }
                          });
                        },
                        child: Container(
                          color: Colors.cyan,
                          child: BoxStateIcon(boxState: i),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            gameState == GameState.gameInprogress
                ? Container()
                : Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.cyan.withOpacity(0.7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Center(
                          child: Text(
                            "${gameState == GameState.circlewin
                                ? "Circle"
                                : gameState == GameState.crosswin
                                ? "Cross"
                                : gameState == GameState.draw
                                ? "Draw"
                                : ""}",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              a = BoxState.empty;
                              b = BoxState.empty;
                              c = BoxState.empty;
                              d = BoxState.empty;
                              e = BoxState.empty;
                              f = BoxState.empty;
                              g = BoxState.empty;
                              h = BoxState.empty;
                              i = BoxState.empty;
                              isCrossTurn = true;
                              gameState = GameState.gameInprogress;
                            });
                          },
                          child: Text("Restart Game"),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
