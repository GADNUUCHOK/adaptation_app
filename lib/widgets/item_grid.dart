import 'package:adaptation_app/model/person.dart';
import 'package:adaptation_app/widgets/custom_popover.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class ItemGrid extends StatelessWidget {
  final Person person;

  const ItemGrid({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPopover(
          context: context,
          transitionDuration: const Duration(milliseconds: 150),
          bodyBuilder: (context) => const CustomPopover(),
          direction: PopoverDirection.bottom,
          width: 200,
          height: 200,
          arrowHeight: 15,
          arrowWidth: 50,
        );
      },
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 20,
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.white,
              child: Text(person.name.substring(0, 1).toUpperCase()),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4.0),
              child: Text(person.name),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4.0),
              child: Text(person.email),
            ),
          ),
        ],
      ),
    );
  }
}
