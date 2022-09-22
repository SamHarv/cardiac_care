import 'package:chf_app/fluid_dashboard.dart';
import 'package:chf_app/symptom_tracker.dart';
import 'package:flutter/material.dart';

import 'package:chf_app/privacy_policy.dart';
import 'package:chf_app/square_button.dart';
import 'package:chf_app/my_appbar.dart';
import 'package:chf_app/app_drawer.dart';
import 'package:chf_app/mass_dashboard.dart';
import 'package:chf_app/connect.dart';

class ObjMeasures extends StatelessWidget {
  static const String id = 'obj_measures';

  const ObjMeasures({super.key});

  //HR, BP, SPO2, ECG

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
                    text: 'Heart Rate',
                    largeText: '80 bpm',
                    pressed: () {
                      //Navigator.pushNamed(context, MassDashboard.id);
                    },
                  ),
                  SquareButton(
                    text: 'Blood Pressure',
                    largeText: '120/80',
                    pressed: () {
                      //Navigator.pushNamed(context, FluidDashboard.id);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SquareButton(
                    text: 'Pulse Oximetry',
                    largeText: '98 %',
                    pressed: () {
                      //Navigator.pushNamed(context, MassDashboard.id);
                    },
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
                      onPressed: () {},
                      child: const Text(
                        'ECG',
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
            ],
          ),
        ),
      ),
    );
  }
}
