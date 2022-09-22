import 'package:chf_app/fluid_intake_page.dart';
import 'package:chf_app/fluid_restriction.dart';
import 'package:flutter/material.dart';

import 'package:chf_app/square_button.dart';
import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/app_drawer.dart';

class FluidDashboard extends StatelessWidget {
  static const String id = 'fluid_dashboard';

  const FluidDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const AppDrawer(),
        appBar: const MyAppBar(id: id),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  'images/cardiac.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SquareButton(
                    text: 'Fluid Intake',
                    largeText: '1345 ml',
                    pressed: () {
                      Navigator.pushNamed(context, FluidIntakePage.id);
                    },
                  ),
                  SquareButton(
                    text: 'Fluid Restriction',
                    largeText: '1500 ml',
                    pressed: () {
                      Navigator.pushNamed(context, FluidRestriction.id);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.89,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white))),
                    elevation: MaterialStateProperty.all(4.0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    'images/demo.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
