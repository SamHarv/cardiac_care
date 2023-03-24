import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

import '../widgets/button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/app_drawer.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: 'logo',
              child: Image.asset(
                'images/1.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            const SizedBox(
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              child: Text(
                'Input about section here...',
              ),
            ),
            Button(
              pressed: () => context.go('/home'),
              height: 0.09,
              width: 0.42,
              colour: Colors.white,
              child: const Center(
                child: Text(
                  'Return',
                  style: standardText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
