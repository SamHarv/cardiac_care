import 'package:chf_app/widgets/app_drawer.dart';
import 'package:chf_app/widgets/my_appbar.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Registration Page'),
      ),
    );
  }
}
