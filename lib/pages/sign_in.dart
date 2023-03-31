import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/app_drawer.dart';
import '/widgets/button.dart';
import '/widgets/my_appbar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
              children: const [
                SizedBox(
                  width: 250.0,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontSize: 23.0,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  width: 250.0,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 23.0,
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              children: [
                Button(
                  pressed: () => Beamer.of(context).beamToNamed('/dashboard'),
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
                Button(
                  pressed: () {
                    //clear input
                  },
                  height: 0.09,
                  width: 0.42,
                  colour: Colors.white,
                  child: const Center(
                    child: Text(
                      'Clear',
                      style: standardText,
                    ),
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
