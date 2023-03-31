import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'pages/mass.dart';
import 'pages/obj_measures.dart';
import 'pages/profile.dart';
import 'pages/symptom_tracker.dart';
import 'pages/registration.dart';
import 'pages/settings.dart';
import 'pages/contact.dart';
import 'pages/sign_in.dart';
import 'pages/dashboard.dart';
import 'pages/about.dart';
import 'pages/welcome.dart';

final routerDelegate = BeamerDelegate(
  notFoundRedirectNamed: '/',
  initialPath: '/',
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) {
        return const BeamPage(
          key: ValueKey(''),
          type: BeamPageType.fadeTransition,
          title: 'HF App',
          child: Welcome(),
        );
      },
      '/registration': (context, state, data) {
        return const BeamPage(
          key: ValueKey('registration'),
          type: BeamPageType.fadeTransition,
          title: 'Registration - HF App',
          child: Registration(),
        );
      },
      '/dashboard': (context, state, data) {
        return const BeamPage(
          key: ValueKey('dashboard'),
          type: BeamPageType.fadeTransition,
          title: 'Dashboard - HF App',
          child: Dashboard(),
        );
      },
      '/profile': (context, state, data) {
        return const BeamPage(
          key: ValueKey('profile'),
          type: BeamPageType.fadeTransition,
          title: 'Profile - HF App',
          child: ProfilePage(),
        );
      },
      '/about': (context, state, data) {
        return const BeamPage(
          key: ValueKey('about'),
          type: BeamPageType.fadeTransition,
          title: 'About - HF App',
          child: About(),
        );
      },
      '/contact': (context, state, data) {
        return const BeamPage(
          key: ValueKey('contact'),
          type: BeamPageType.fadeTransition,
          title: 'Contact - HF App',
          child: Contact(),
        );
      },
      '/settings': (context, state, data) {
        return const BeamPage(
          key: ValueKey('settings'),
          type: BeamPageType.fadeTransition,
          title: 'Settings - HF App',
          child: Settings(),
        );
      },
      '/symptoms': (context, state, data) {
        return const BeamPage(
          key: ValueKey('symptoms'),
          type: BeamPageType.fadeTransition,
          title: 'Symptom Tracker - HF App',
          child: SymptomTracker(),
        );
      },
      '/obj': (context, state, data) {
        return const BeamPage(
          key: ValueKey('obj'),
          type: BeamPageType.fadeTransition,
          title: 'Cardiac Measures - HF App',
          child: ObjMeasures(),
        );
      },
      '/signin': (context, state, data) {
        return const BeamPage(
          key: ValueKey('signin'),
          type: BeamPageType.fadeTransition,
          title: 'Sign In - HF App',
          child: SignIn(),
        );
      },
      '/mass': (context, state, data) {
        return const BeamPage(
          key: ValueKey('mass'),
          type: BeamPageType.slideTransition,
          title: 'Record Body Mass - HF App',
          child: MassPage(),
        );
      },

      // '/article/:id': (context, state, data) {
      //   final postId = state.pathParameters['id'];
      //   final post = postData.firstWhere((post) => post.id == postId);
      //   return BeamPage(
      //     key: ValueKey('article-$postId'),
      //     type: BeamPageType.fadeTransition,
      //     title: post.title,
      //     child: ArticlePage(post: post, id: postId!),
      //   );
      // },
    },
  ),
);
