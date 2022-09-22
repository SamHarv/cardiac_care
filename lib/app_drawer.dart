import 'package:chf_app/about.dart';
import 'package:chf_app/baseline_mass_page.dart';
import 'package:chf_app/body_mass_page.dart';
import 'package:chf_app/connect.dart';
import 'package:chf_app/fluid_dashboard.dart';
import 'package:chf_app/fluid_intake_page.dart';
import 'package:chf_app/fluid_restriction.dart';
import 'package:chf_app/mass_dashboard.dart';
import 'package:chf_app/obj_measures.dart';
import 'package:chf_app/privacy_policy.dart';
import 'package:chf_app/symptom_tracker.dart';
import 'package:chf_app/telehealth.dart';
import 'package:flutter/material.dart';
import 'package:chf_app/home_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Body Mass',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MassDashboard(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Fluid Intake',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FluidDashboard(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Symptom Tracker',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SymptomTracker(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Cardiac Measures',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ObjMeasures(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'View History Chart',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Connect Device',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Connect(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Speak With Your Clinician',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Telehealth(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicy(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'About',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const About(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
