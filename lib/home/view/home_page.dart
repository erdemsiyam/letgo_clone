import 'package:flutter/material.dart';
import 'package:letgo_clone/home/model/item.dart';
import 'package:letgo_clone/home/view/category.dart';
import 'package:letgo_clone/home/view/element_banner.dart';
import 'package:letgo_clone/home/view/home_app_bar.dart';
import 'package:letgo_clone/home/view/items_row.dart';
import 'package:letgo_clone/home/view/show_case.dart';
import 'package:letgo_clone/home/view/show_case_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> stableListItems = [
    const HomeAppBar(),
    const SizedBox(height: 10),
    const Category(),
    const ShowCaseBanner(),
    const ShowCase(),
    const ElementBanner(),
  ];

  List<Widget> listItems = [
    ItemsRowWidget(
      item1: Item(),
      item2: Item(),
    ),
    ItemsRowWidget(
      item1: Item(),
      item2: Item(),
    ),
    ItemsRowWidget(
      item1: Item(isEasyCargo: true, isFeatured: true),
      item2: Item(),
    ),
    ItemsRowWidget(
      item1: Item(),
      item2: Item(),
    ),
  ];

  List<Widget> listAllItems = [];

  @override
  void initState() {
    super.initState();
    listAllItems.addAll(stableListItems);
    listAllItems.addAll(listItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (_, index) {
            return listAllItems[index];
          },
          itemCount: listAllItems.length,
        ),
      ),
    );
  }
}
