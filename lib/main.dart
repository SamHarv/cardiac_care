import 'package:beamer/beamer.dart';
import 'package:chf_app/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primaryColor: primaryColour,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      title: 'Cardiac Care',
      //theme: ThemeData.dark(),
    );
  }
}

//todo
//See notes in phone
//Implement bottom nav bar and back functionality instead of app drawer

