import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int itemCount = 10;
  List<ListItem> listItems = [];
  @override
  void initState() {
    super.initState();
    listItems = [
      ListItem(
        backgroundColor: Colors.blue,
        iconData: Icons.car_repair,
        title: "Araba",
      ),
      ListItem(
        backgroundColor: Colors.green,
        iconData: Icons.phone_android,
        title: "Elektronik",
      ),
      ListItem(
        backgroundColor: Colors.yellow[600]!,
        iconData: Icons.home_filled,
        title: "Ev Eşyaları",
      ),
      ListItem(
        backgroundColor: Colors.orange,
        iconData: Icons.motorcycle_outlined,
        title: "Diğer Araçlar",
      ),
    ];
    itemCount = listItems.length;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CircleAvatar(
              minRadius: 30,
              child: Icon(
                listItems[index].iconData,
                color: Colors.white,
              ),
              backgroundColor: listItems[index].backgroundColor,
            ),
            const SizedBox(height: 5),
            Text(listItems[index].title),
          ],
        ),
        (index == itemCount - 1) ? const SizedBox(width: 30) : Container(),
      ],
    );
  }
}

class ListItem {
  Color backgroundColor;
  IconData iconData;
  String title;
  ListItem({
    this.backgroundColor = Colors.blue,
    this.iconData = Icons.ac_unit,
    this.title = "Deneme",
  });
}
