// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:clean_arch_project/features/list_cats/presentation/stores/cat_store.dart';
import 'package:clean_arch_project/features/list_cats/presentation/widgets/cat_list_view.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/widgets/cats_app_bar.dart';

class HomeCatListScreen extends StatefulWidget {
  const HomeCatListScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeCatListScreen> createState() => _HomeCatListScreen();
}

class _HomeCatListScreen extends State<HomeCatListScreen> {
  final CatStore store = Modular.get<CatStore>();
  @override
  void initState() {
    store.loadCatList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CatsAppBar(title: 'CATS APP'),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // código ao clicar no item 1
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // código ao clicar no item 2
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Observer(builder: (context) {
          return store.status.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : CatListView(catEntity: store.catList);
        }),
      ),
    );
  }
}
