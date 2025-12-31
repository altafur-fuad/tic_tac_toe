import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enums/box_state.dart';

import 'widget/box_state_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCrossTurn = true;

  BoxState a = BoxState.empty;

  BoxState b = BoxState.empty;

  BoxState c = BoxState.empty;

  BoxState d = BoxState.empty;

  BoxState e = BoxState.empty;

  BoxState f = BoxState.empty;

  BoxState g = BoxState.empty;

  BoxState h = BoxState.empty;

  BoxState i = BoxState.empty;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Tic Tac Toe')),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                "Turn ${isCrossTurn ? "Cross" : "Circle"}",
                style: TextStyle(fontSize: 40),
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
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
                        }
                      });
                    },
                    child: Container(
                      color: Colors.tealAccent,
                      child: BoxStateIcon(boxState: i),
                    ),
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
