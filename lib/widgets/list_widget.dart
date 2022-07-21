import 'package:adaptation_app/model/person.dart';
import 'package:adaptation_app/widgets/item_list_tile.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List<Person> listPerson;
  int? currentProduct;
  void Function(int) onProductTap;

  ListWidget({Key? key, required this.listPerson, required this.currentProduct, required this.onProductTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive App'),
      ),
      body: ListView.builder(
        itemCount: listPerson.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemListTile(person: listPerson[index], currentProduct: currentProduct, onProductTap: onProductTap, index: index,);
        },
      ),
    );
  }
}
