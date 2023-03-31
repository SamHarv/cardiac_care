import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '/constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget buildListTile(String title, IconData icon, dynamic tapHandler) {
    return ListTile(
      tileColor: thirdColour,
      leading: Icon(
        icon,
        size: 26,
        color: secondaryColour,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          color: primaryColour,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              //color: Colors.white,
              child: Image.asset('images/2.png'),
            ),
          ),
          const Divider(),
          buildListTile(
            'Dashboard',
            Icons.dashboard,
            () => Beamer.of(context).beamToNamed('/dashboard'),
          ),
          const Divider(),
          buildListTile(
            'Profile',
            Icons.person,
            () => Beamer.of(context).beamToNamed('/profile'),
          ),
          const Divider(),
          buildListTile(
            'About',
            Icons.info,
            () => Beamer.of(context).beamToNamed('/about'),
          ),
          const Divider(),
          buildListTile(
            'Contact',
            Icons.email,
            () => Beamer.of(context).beamToNamed('/contact'),
          ),
          const Divider(),
          buildListTile(
            'Settings',
            Icons.settings,
            () => Beamer.of(context).beamToNamed('/settings'),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => Beamer.of(context).beamToNamed('/privacy'),
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: primaryColour,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Beamer.of(context).beamToNamed('/terms'),
                child: const Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: primaryColour,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
