import 'package:flutter/material.dart';

class CatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatsAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
        elevation: 5,
        centerTitle: true,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }));
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
