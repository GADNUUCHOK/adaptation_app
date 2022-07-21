import 'dart:ui';

import 'package:adaptation_app/model/person.dart';
import 'package:adaptation_app/widgets/item_grid.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  final List<Person> listPerson;

  const GridWidget({Key? key, required this.listPerson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
              child: Drawer(
            backgroundColor: Colors.lightBlueAccent,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Adaptive App',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(
                  listPerson.length,
                  (index) => Card(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ItemGrid(
                        person: listPerson[index],
                      )),
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
