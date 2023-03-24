import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      title: Center(
        child: InkWell(
          child: Image.asset(
            'images/1.png',
            fit: BoxFit.contain,
            height: 50.0,
          ),
          onTap: () => context.go('/home'),
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: IconButton(
              onPressed: () => context.go('/profile'),
              icon: const Icon(Icons.person),
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
