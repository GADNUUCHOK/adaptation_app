import 'package:flutter/material.dart';

class AdaptiveWidget extends StatelessWidget {
  final Widget? list;
  final Widget? grid;

  const AdaptiveWidget({Key? key, this.grid, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 720) {
      return list!;
    } else {
      return grid!;
    }
  }
}
