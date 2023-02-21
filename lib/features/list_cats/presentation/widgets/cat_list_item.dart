// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';
import 'package:flutter/material.dart';

class CatListItem extends StatelessWidget {
  final CatEntity catEntity;
  final VoidCallback onTap;

  const CatListItem({
    Key? key,
    required this.onTap,
    required this.catEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Text(catEntity.name),
            Text(catEntity.description),
          ],
        ),
      ),
    );
  }
}
