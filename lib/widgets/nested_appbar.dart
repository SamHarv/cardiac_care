import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '/constants.dart';

class NestedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NestedAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Beamer.of(context).beamBack(),
          //Beamer.of(context).beamToNamed('/dashboard'),
        ),
      ),
      iconTheme: const IconThemeData(
        color: secondaryColour,
      ),
      title: Center(
        child: InkWell(
            child: Image.asset(
              'images/1.png',
              fit: BoxFit.contain,
              height: 50.0,
            ),
            onTap: () {
              // if (user is authenticated) {
              //  go to dashboard;
              // } else {
              //  go to welcome page;
              // }
              Beamer.of(context).beamToNamed('/dashboard');
            }),
      ),
      backgroundColor: Colors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: IconButton(
              onPressed: () {
                // if (user is authenticated) {
                //  go to profile details page;
                // } else {
                //  go to welcome page;
                // }
                Beamer.of(context).beamToNamed('/profile');
              },
              icon: const Icon(Icons.person),
              color: secondaryColour,
            ),
          ),
        ),
      ],
    );
  }
}
