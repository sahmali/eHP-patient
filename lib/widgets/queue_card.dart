import 'package:flutter/material.dart';

class QueueCard extends StatefulWidget {
  int personsInQueue;
  QueueCard({@required this.personsInQueue});
  @override
  _QueueCardState createState() => _QueueCardState();
}

class _QueueCardState extends State<QueueCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              "Persons in queue:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF56A1E6),
                  fontSize: 10),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "6",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF56A1E6),
                  fontSize: 20),
            )
          ],
        ),
      ),
      color: Color(0xFFEEF6FC),
    );
  }
}
