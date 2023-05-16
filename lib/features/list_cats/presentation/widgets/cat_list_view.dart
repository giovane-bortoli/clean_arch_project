// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';
import 'package:clean_arch_project/features/list_cats/presentation/widgets/cat_list_item.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CatListView extends StatelessWidget {
  final List<CatEntity> catEntity;
  const CatListView({
    Key? key,
    required this.catEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: catEntity.length,
        itemBuilder: (context, index) {
          final catCard = catEntity[index];
          return CatListItem(
            onTap: () {
              Modular.to.pushNamed('cat-details');
            },
            catEntity: catCard,
          );
        });
  }
}
