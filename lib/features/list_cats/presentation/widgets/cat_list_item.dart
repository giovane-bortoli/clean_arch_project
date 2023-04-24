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
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  Text(catEntity.name),
                  const SizedBox(height: 5),
                  Text(catEntity.description),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
