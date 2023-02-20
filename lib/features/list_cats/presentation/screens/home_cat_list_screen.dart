import 'package:flutter/material.dart';

import '../../../../shared/widgets/cats_app_bar.dart';

class HomeCatListScreen extends StatefulWidget {
  const HomeCatListScreen({super.key});

  @override
  State<HomeCatListScreen> createState() => _HomeCatListScreen();
}

class _HomeCatListScreen extends State<HomeCatListScreen> {
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
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            //final item = _data[index];
            return const CustomCardListCats();
          },
        ),
      ),
    );
  }
}

class CustomCardListCats extends StatelessWidget {
  const CustomCardListCats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
      child: Card(
        elevation: 5,
        color: Colors.lightGreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 15,
            ),
            Text(
              'teste',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'teste 2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    );
  }
}
