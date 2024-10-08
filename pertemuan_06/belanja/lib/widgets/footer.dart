import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Developed by Alhamdana Fariz Al Furqaan - NIM: 2241720115',
        style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      ),
    );
  }
}
