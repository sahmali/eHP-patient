import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style.dart';
import '../palette.dart';
import '../widgets/custom_list_tile.dart';
import '../widgets/custom_text_button.dart';

class ProfileSettingsScreen extends StatefulWidget {
  @override
  _ProfileSettingsScreenState createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Settings', style: pageTitleStyle),
            const SizedBox(
              height: 24,
            ),
            Text('General', style: pageSubtitleStyle),
            const SizedBox(
              height: 12,
            ),
            CustomListTile(
              title: 'Notifications',
              icon: Icons.notifications,
              rightElement: Transform.scale(
                scale: 0.85,
                child: CupertinoSwitch(
                  value: isSwitched,
                  activeColor: primaryColor,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ),
            ),
            CustomListTile(
                title: 'Language',
                icon: Icons.notifications,
                rightElement: CustomTextButton(
                  title: 'English',
                )),
          ],
        ),
      ),
    );
  }
}
