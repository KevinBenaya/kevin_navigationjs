import 'package:flutter/material.dart';

import 'package:kevin_navigationjs/models/item.dart';
import 'package:kevin_navigationjs/widgets/list_item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, img: 'assets/images/Sugar.png'),
    Item(name: 'Salt', price: 2000, img: 'assets/images/Salt.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: ListItem(
                item: item,
              ),
            );
          },
        ),
      ),
    );
  }
}
