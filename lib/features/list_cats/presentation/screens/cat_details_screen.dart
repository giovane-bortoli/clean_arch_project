// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_arch_project/shared/widgets/cats_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';

class CatDetailsScreen extends StatelessWidget {
  final CatDetailsArgs args;

  const CatDetailsScreen({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CatsAppBar(title: args.catEntity.name),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text('Temperament:'),
            _customText(args.catEntity.temperament),
            const SizedBox(height: 10),
            const Text('Origin:'),
            _customText(args.catEntity.origin),
            const SizedBox(height: 10),
            const Text('Description:'),
            _customText(args.catEntity.description),
            const SizedBox(height: 10),
            const Text('Photo:'),
            Image.network(
              args.catEntity.catImage.url,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _customHeadline(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.black,
      fontFamily: 'montserrat',
      fontSize: 24.0,
    ),
  );
}

Widget _customText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 14.0,
      fontFamily: 'montserrat',
      fontWeight: FontWeight.w200,
    ),
  );
}

class CatDetailsArgs {
  final CatEntity catEntity;

  CatDetailsArgs({required this.catEntity});
}
