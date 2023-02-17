import 'package:flutter/material.dart';

import 'shared/widgets/cats_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                title: Text('Item 1'),
                onTap: () {
                  // código ao clicar no item 1
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // código ao clicar no item 2
                },
              ),
            ],
          ),
        ),
        body: Container());
  }
}
