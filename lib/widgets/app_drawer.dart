import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

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
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/home'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Body Mass',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('massdashboard'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Fluid Intake',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/fluiddashboard'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Symptom Tracker',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/symptoms'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Cardiac Measures',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/obj'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'View History Chart',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/home'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Connect Device',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/connect'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Speak With Your Clinician',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/telehealth'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/privacy'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'About',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () => context.go('/about'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
