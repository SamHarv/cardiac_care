import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/button.dart';
import '/widgets/nested_appbar.dart';
import '/widgets/text_field.dart';
import '/providers.dart';

class MassPage extends ConsumerStatefulWidget {
  const MassPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MassPageState();
}

class _MassPageState extends ConsumerState<MassPage> {
  final massController = TextEditingController();
  final baselineMassController = TextEditingController();
  double? dailyMass;
  double? setBaselineMass;

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    dailyMass = ref.watch(bodyMass);
    setBaselineMass = ref.watch(baselineMass);

    return Scaffold(
      appBar: const NestedAppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Select Date for Entry'),
            Button(
              pressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: const ColorScheme.light(
                            primary: primaryColour,
                          ),
                          dialogTheme: DialogTheme(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                          textTheme: const TextTheme(
                            labelSmall: TextStyle(fontSize: 16),
                            labelLarge: TextStyle(fontSize: 16),
                            bodySmall: TextStyle(fontSize: 16),
                          ),
                        ),
                        child: child!,
                      );
                    });
              },
              height: 0.09,
              width: mediaWidth <= 750 ? 0.35 : 0.2,
              colour: primaryColour,
              child: const Center(
                child: Text(
                  'Select Date',
                  style: TextStyle(
                    fontSize: 20,
                    color: thirdColour,
                  ),
                ),
              ),
            ),
            const Text('Record your daily body mass below:'),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: massController,
              hintText: '$dailyMass',
              suffix: 'kg',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            const Text('Adjust your baseline (dry) mass:'),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: baselineMassController,
              hintText: '$setBaselineMass',
              suffix: 'kg',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            Button(
              pressed: () {
                ref.read(bodyMass.notifier).state =
                    double.parse(massController.text);
                dailyMass = ref.watch(bodyMass);
                // ignore: unnecessary_null_comparison
                ref.read(baselineMass.notifier).state == null
                    ? ref.read(baselineMass.notifier).state =
                        double.parse(baselineMassController.text)
                    : ref.read(baselineMass.notifier).state =
                        ref.watch(baselineMass);
                setBaselineMass = ref.watch(baselineMass);
                //Beamer.of(context).beamBack();
                //Add dailyMass result to list of Masses or Map with Date : Mass
                //show snackBar
              },
              height: 0.09,
              width: mediaWidth <= 750 ? 0.35 : 0.2,
              colour: primaryColour,
              child: const Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 20,
                    color: thirdColour,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
