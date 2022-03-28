import 'package:flutter/material.dart';

import 'package:kevin_navigationjs/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(item.name)),
            Expanded(
              child: Text(
                item.price.toString(),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
