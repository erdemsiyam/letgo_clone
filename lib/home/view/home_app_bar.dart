import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  TextEditingController tec1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(width: 20),
        avatar,
        const SizedBox(width: 30),
        searchText,
        const SizedBox(width: 30),
        btnFilter,
        const SizedBox(width: 20),
      ],
    );
  }

  Widget get avatar => const CircleAvatar(
        backgroundColor: Colors.pink,
        child: Text('E'),
      );
  Widget get searchText => Expanded(
        child: TextField(
          controller: tec1,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[300],
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Colors.grey[400],
            focusColor: Colors.grey[400],
            hintText: 'Ara',
            contentPadding:
                const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(25.7),
            ),
          ),
        ),
      );
  Widget get btnFilter => TextButton(
        onPressed: () {},
        child: const Text(
          'Filtrele',
          style: TextStyle(color: Colors.red),
        ),
      );
}
