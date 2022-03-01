// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShowCase extends StatefulWidget {
  const ShowCase({Key? key}) : super(key: key);

  @override
  _ShowCaseState createState() => _ShowCaseState();
}

class _ShowCaseState extends State<ShowCase> {
  int itemCount = 10;
  List<ListItem> listItems = [];
  @override
  void initState() {
    super.initState();
    listItems = [
      ListItem(imagePath: 'car.jpeg'),
      ListItem(imagePath: 'car.jpeg'),
      ListItem(
        imagePath: 'car.jpeg',
        isEasyCargo: true,
        isFeatured: true,
      ),
      ListItem(imagePath: 'car.jpeg'),
      ListItem(imagePath: 'car.jpeg'),
      ListItem(imagePath: 'car.jpeg'),
    ];
    itemCount = listItems.length;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: listItem,
        separatorBuilder: (_, i) => listItemSeperator,
        itemCount: itemCount,
      ),
    );
  }

  Widget get listItemSeperator => const SizedBox(width: 30);

  Widget listItem(BuildContext context, int index) {
    return Row(
      children: [
        (index == 0) ? const SizedBox(width: 30) : Container(),
        SizedBox(
          width: 100,
          height: 100,
          child: Stack(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  image:
                      AssetImage('assets/images/' + listItems[index].imagePath),
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
              (listItems[index].isEasyCargo)
                  ? const Positioned(
                      left: 4,
                      child: Icon(
                        Icons.check_box_outline_blank_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  : Container(),
              (listItems[index].isFeatured)
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
          ),
        ),
        (index == itemCount - 1) ? const SizedBox(width: 30) : Container(),
      ],
    );
  }
}

class ListItem {
  String id;
  String imagePath;
  bool isEasyCargo;
  bool isFeatured;
  ListItem({
    this.id = "",
    this.imagePath = "",
    this.isEasyCargo = false,
    this.isFeatured = false,
  });
}
