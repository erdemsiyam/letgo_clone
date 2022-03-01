import 'package:flutter/material.dart';
import 'package:letgo_clone/home/model/item.dart';
import 'package:letgo_clone/home/view/item_card.dart';

class ItemsRowWidget extends StatelessWidget {
  Item? item1;
  Item? item2;
  ItemsRowWidget({Key? key, this.item1, this.item2}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            ItemCard(item: item1),
            ItemCard(item: item2),
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
