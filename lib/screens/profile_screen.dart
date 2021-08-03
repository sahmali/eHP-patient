import 'package:flutter/material.dart';
import '../widgets/profile_details.dart';
import '../widgets/subscribed_doctors.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Wrap(
          direction: Axis.horizontal,
          children: [
            ProfileDetails(),
            SubscribedDoctors(),
          ],
        ));
  }
}
