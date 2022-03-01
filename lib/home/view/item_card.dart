import 'package:flutter/material.dart';
import 'package:letgo_clone/home/model/item.dart';

class ItemCard extends StatelessWidget {
  Item? item;
  ItemCard({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (item == null) return Container();
    return Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
            height: 150,
            width: 150,
            image: AssetImage('assets/images/' + item!.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          bottom: 25,
          right: 4,
          child: Icon(
            Icons.star,
            color: Colors.white,
            size: 30,
          ),
        ),
        (item!.isEasyCargo)
            ? const Positioned(
                left: 4,
                child: Icon(
                  Icons.check_box_outline_blank_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              )
            : Container(),
        (item!.isFeatured)
            ? const Positioned(
                right: 4,
                child: Icon(
                  Icons.bakery_dining_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              )
            : Container(),
      ],
    );
  }
}
