import 'package:adaptation_app/model/person.dart';
import 'package:adaptation_app/widgets/action_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  final Person person;

  const ItemListTile({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        onTap: () {
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
