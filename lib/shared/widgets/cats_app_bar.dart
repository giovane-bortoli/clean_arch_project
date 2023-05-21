// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;

  const CatsAppBar({
    Key? key,
    required this.title,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.purple,
      elevation: 5,
      centerTitle: true,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
