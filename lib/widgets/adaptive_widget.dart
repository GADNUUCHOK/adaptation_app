import 'package:adaptation_app/widgets/grid_widget.dart';
import 'package:adaptation_app/widgets/list_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdaptiveWidget extends StatelessWidget {
  final ListWidget list;
  final GridWidget grid;

  const AdaptiveWidget({Key? key, required this.grid, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 720) {
      return list;
    } else {
      if (kDebugMode) {
        print(list.currentProduct);
      }
      return grid;
    }
  }
}

// class AdaptiveWidget extends StatefulWidget {
//   final ListWidget list;
//   final GridWidget grid;
//
//   const AdaptiveWidget({Key? key, required this.grid, required this.list}) : super(key: key);
//
//   @override
//   State<AdaptiveWidget> createState() => _AdaptiveWidgetState();
// }
//
// class _AdaptiveWidgetState extends State<AdaptiveWidget> {
//   int? _currentProduct;
//   late void Function(int) _onPersonTap;
//
//   @override
//   void initState() {
//     super.initState();
//     _onPersonTap = (index) {
//       setState(() {
//         _currentProduct = index;
//       });
//     };
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     if (width < 720) {
//       return widget.list(_currentProduct, _onPersonTap);
//     } else {
//       return widget.grid(_currentProduct, _onPersonTap);
//     }
//   }
// }
