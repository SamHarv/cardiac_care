import 'package:flutter/material.dart';

import 'package:chf_app/square_button.dart';
import 'package:chf_app/body_mass_page.dart';
import 'package:chf_app/baseline_mass_page.dart';
import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/app_drawer.dart';

class MassDashboard extends StatelessWidget {
  static const String id = 'mass_dashboard';

  const MassDashboard({super.key});

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
                    text: 'Body Mass',
                    largeText: '85.4 kg',
                    pressed: () {
                      Navigator.pushNamed(context, BodyMassPage.id);
                    },
                  ),
                  SquareButton(
                    text: 'Baseline Mass',
                    largeText: '85 kg',
                    pressed: () {
                      Navigator.pushNamed(context, BaselineMassPage.id);
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
