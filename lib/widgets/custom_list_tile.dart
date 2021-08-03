import 'package:flutter/material.dart';
import 'custom_card.dart';
import '../palette.dart';

class CustomListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final Widget rightElement;
  CustomListTile(
      {@required this.title, this.icon = null, this.rightElement = null});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: CustomCard(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    widget.icon,
                    size: 24,
                    color: customGrey[700],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                        color: customGrey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              widget.rightElement,
            ],
          ),
        ),
      ),
    );
  }
}
