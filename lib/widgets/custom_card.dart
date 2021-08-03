import 'package:flutter/material.dart';
import '../palette.dart';

class CustomCard extends StatelessWidget {
  Widget child;
  CustomCard({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.00,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: child);
  }
}
