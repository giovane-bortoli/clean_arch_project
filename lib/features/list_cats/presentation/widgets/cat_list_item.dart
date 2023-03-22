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
      child: Column(
        children: [
          Card(
            shadowColor: Colors.black,
            elevation: 2.0,
            child: Column(
              children: [
                Text(catEntity.name),
                Text(catEntity.description),
              ],
            ),
          )
        ],
      ),
    );
  }
}
