import 'package:chf_app/fluid_dashboard.dart';
import 'package:chf_app/obj_measures.dart';
import 'package:chf_app/symptom_tracker.dart';
import 'package:flutter/material.dart';

import 'package:chf_app/privacy_policy.dart';
import 'package:chf_app/square_button.dart';
import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/app_drawer.dart';
import 'package:chf_app/mass_dashboard.dart';
import 'package:chf_app/connect.dart';

class HomePage extends StatelessWidget {
  static const String id = 'home_page';

  const HomePage({super.key});

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
                      Navigator.pushNamed(context, MassDashboard.id);
                    },
                  ),
                  SquareButton(
                    text: 'Fluid Intake',
                    largeText: '1345 ml',
                    pressed: () {
                      Navigator.pushNamed(context, FluidDashboard.id);
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
                  onPressed: () {
                    Navigator.pushNamed(context, Connect.id);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Connect Device',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.watch,
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 40,
                          ),
                          Icon(
                            Icons.scale,
                            color: Colors.green,
                            size: 40,
                          ),
                          Icon(
                            Icons.local_drink,
                            color: Colors.blue,
                            size: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.42,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color?>(
                          Colors.white,
                        ),
                        elevation: MaterialStateProperty.all(4.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, SymptomTracker.id);
                      },
                      child: const Text(
                        'Symptom\nTracker ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.19,
                    width: MediaQuery.of(context).size.width * 0.42,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color?>(
                          Colors.white,
                        ),
                        elevation: MaterialStateProperty.all(4.0),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, ObjMeasures.id);
                      },
                      child: const Text(
                        'Cardiac\nMeasures',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, PrivacyPolicy.id);
                },
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
