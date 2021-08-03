import 'package:flutter/material.dart';
import '../palette.dart';
import '../style.dart';

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundImage: const NetworkImage(
                  "https://live.staticflickr.com/2333/2065081532_8d10a55aa2_z.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Marvin McKinney',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: customGrey[800],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '16 Sep 1550',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: customGrey[800]),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'female',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: customGrey[600],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            GestureDetector(
              child: Text(
                'My profile  >',
                style: textButtonStyle,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
