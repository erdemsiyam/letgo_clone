import 'package:flutter/material.dart';

class ShowCaseBanner extends StatelessWidget {
  const ShowCaseBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 20),
        Text(
          'Vitrin ilanlar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Expanded(child: Container()),
        TextButton(
          onPressed: () {},
          child: Text(
            'Hepsini Gör',
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
