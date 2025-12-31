import 'package:flutter/material.dart';

import '../enums/box_state.dart';

class BoxStateIcon extends StatelessWidget {
  final boxState;
  const BoxStateIcon({super.key, required this.boxState});

  @override
  Widget build(BuildContext context) {
    return boxState == BoxState.circle
        ? Icon(Icons.lens_outlined, size: 110)
        : boxState == BoxState.cross
        ? Icon(Icons.close, size: 120)
        : Container();
  }
}
