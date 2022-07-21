import 'package:flutter/material.dart';

class BottomActionSheet extends StatelessWidget {
  const BottomActionSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      onClosing: () {},
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("VIEW PROFILE"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.connect_without_contact_sharp),
              title: const Text("FRIENDS"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.task),
              title: const Text("REPORT"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}
