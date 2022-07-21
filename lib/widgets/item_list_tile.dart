import 'package:adaptation_app/model/person.dart';
import 'package:adaptation_app/widgets/action_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  final Person person;
  int? currentProduct;
  void Function(int) onProductTap;
  int index;

  ItemListTile({Key? key, required this.person, required this.currentProduct, required this.onProductTap, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        onTap: () {
          currentProduct = index;
          onProductTap(index);
          showModalBottomSheet(
              context: context,
              builder: (context) => const BottomActionSheet());
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        tileColor: Colors.lightBlueAccent,
        leading: CircleAvatar(
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
          child: Text(person.name.substring(0, 1).toUpperCase()),
        ),
        title: Text(person.name),
        subtitle: Text(person.email),
      ),
    );
  }
}
