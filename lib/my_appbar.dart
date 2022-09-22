import 'package:flutter/material.dart';

import 'package:chf_app/profile.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  final String id;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      title: const Center(
        child: Text(
          'Cardiac Care',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              icon: const Icon(Icons.person),
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
