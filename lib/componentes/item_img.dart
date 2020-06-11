import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network(
          'https://comoacaba.com/wp-content/uploads/2019/05/38d32uG1x7iiN2jdK0cRX0Bk423.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
