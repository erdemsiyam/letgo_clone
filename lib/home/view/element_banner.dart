import 'package:flutter/material.dart';

class ElementBanner extends StatelessWidget {
  const ElementBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 20),
        Text(
          'Akçakoca',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Expanded(child: Container()),
        TextButton(
          onPressed: () {},
          child: Text(
            'Düzelt >',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
