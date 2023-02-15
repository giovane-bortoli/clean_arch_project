import 'package:flutter/material.dart';

class CatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('teste'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
