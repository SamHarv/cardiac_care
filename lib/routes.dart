import 'package:chf_app/pages/baseline_mass_page.dart';
import 'package:chf_app/pages/body_mass_page.dart';
import 'package:chf_app/pages/connect.dart';
import 'package:chf_app/pages/fluid_dashboard.dart';
import 'package:chf_app/pages/fluid_intake_page.dart';
import 'package:chf_app/pages/fluid_restriction.dart';
import 'package:chf_app/pages/mass_dashboard.dart';
import 'package:chf_app/pages/obj_measures.dart';
import 'package:chf_app/pages/privacy_policy.dart';
import 'package:chf_app/pages/profile.dart';
import 'package:chf_app/pages/symptom_tracker.dart';
import 'package:chf_app/pages/telehealth.dart';
import 'package:go_router/go_router.dart';

import './pages/home_page.dart';
import './pages/about.dart';
import './pages/welcome.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Welcome(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const About(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/baselinemass',
      builder: (context, state) => const BaselineMassPage(),
    ),
    GoRoute(
      path: '/mass',
      builder: (context, state) => const BodyMassPage(),
    ),
    GoRoute(
      path: '/connect',
      builder: (context, state) => const Connect(),
    ),
    GoRoute(
      path: '/fluiddashboard',
      builder: (context, state) => const FluidDashboard(),
    ),
    GoRoute(
      path: '/fluid',
      builder: (context, state) => const FluidIntakePage(),
    ),
    GoRoute(
      path: '/fluidrestriction',
      builder: (context, state) => const FluidRestriction(),
    ),
    GoRoute(
      path: '/massdashboard',
      builder: (context, state) => const MassDashboard(),
    ),
    GoRoute(
      path: '/obj',
      builder: (context, state) => const ObjMeasures(),
    ),
    GoRoute(
      path: '/privacy',
      builder: (context, state) => const PrivacyPolicy(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: '/symptoms',
      builder: (context, state) => const SymptomTracker(),
    ),
    GoRoute(
      path: '/telehealth',
      builder: (context, state) => const Telehealth(),
    ),
  ],
);
