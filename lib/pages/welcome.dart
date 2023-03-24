import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/constants.dart';

import '/widgets/app_drawer.dart';
import '/widgets/button.dart';
import '/widgets/my_appbar.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Column(
              children: [
                Button(
                  pressed: () => context.go('/profile'),
                  height: 0.09,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Create User',
                      style: standardText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Button(
                  pressed: () => context.go('/profile'),
                  height: 0.09,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Log In',
                      style: standardText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextButton(
                  onPressed: () => context.go('/home'),
                  child: const Text(
                    'Skip for now',
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: () => context.go('/privacy'),
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
