import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enums/box_state.dart';

import 'widget/box_state_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  BoxState a = BoxState.circle;
  BoxState b = BoxState.cross;
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
              child: Text("Turn X", style: TextStyle(fontSize: 40)),
            ),
            Expanded(
              flex: 5,
              child: GridView.count(
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
                crossAxisCount: 3,
                children: [
                  Container(
                    color: Colors.tealAccent,
                    child: BoxStateIcon(boxState: a),
                  ),
                  Container(
                    color: Colors.tealAccent,
                    child: BoxStateIcon(boxState: b),
                  ),
                  Container(color: Colors.tealAccent),
                  Container(color: Colors.tealAccent),
                  Container(color: Colors.tealAccent),
                  Container(color: Colors.tealAccent),
                  Container(color: Colors.tealAccent),
                  Container(color: Colors.tealAccent),
                  Container(color: Colors.tealAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
