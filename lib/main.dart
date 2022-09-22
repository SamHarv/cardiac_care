import 'package:chf_app/fluid_dashboard.dart';
import 'package:chf_app/about.dart';
import 'package:chf_app/mass_dashboard.dart';
import 'package:chf_app/obj_measures.dart';
import 'package:chf_app/symptom_tracker.dart';
import 'package:chf_app/telehealth.dart';
import 'package:flutter/material.dart';
import 'package:chf_app/home_page.dart';
import 'package:chf_app/body_mass_page.dart';
import 'package:chf_app/fluid_intake_page.dart';
import 'package:chf_app/baseline_mass_page.dart';
import 'package:chf_app/fluid_restriction.dart';
import 'package:chf_app/privacy_policy.dart';
import 'package:chf_app/profile.dart';
import 'package:chf_app/welcome.dart';
import 'package:chf_app/connect.dart';

// Change logo and colour scheme
// Fill telehealth page and add chat function
// Add medication alerts
// Add weight gain and fluid alerts
// Update demo charts
// Capture data in input pages and display on home page

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(),
      initialRoute: Welcome.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        BodyMassPage.id: (context) => const BodyMassPage(),
        FluidIntakePage.id: (context) => const FluidIntakePage(),
        BaselineMassPage.id: (context) => const BaselineMassPage(),
        FluidRestriction.id: (context) => const FluidRestriction(),
        PrivacyPolicy.id: (context) => const PrivacyPolicy(),
        ProfilePage.id: (context) => const ProfilePage(),
        Welcome.id: (context) => const Welcome(),
        MassDashboard.id: (context) => const MassDashboard(),
        FluidDashboard.id: (context) => const FluidDashboard(),
        Connect.id: (context) => const Connect(),
        SymptomTracker.id: (context) => const SymptomTracker(),
        ObjMeasures.id: (context) => const ObjMeasures(),
        About.id: (context) => const About(),
        Telehealth.id: (context) => const Telehealth(),
      },
    );
  }
}
