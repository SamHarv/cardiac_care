import 'package:beamer/beamer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../main.dart';
import '../models/entry.dart';
import '/constants.dart';
import '/widgets/button.dart';
import '/widgets/nested_appbar.dart';
import '/widgets/text_field.dart';
import '/providers.dart';

class DailyMeasures extends ConsumerStatefulWidget {
  const DailyMeasures({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DailyMeasuresState();
}

class _DailyMeasuresState extends ConsumerState<DailyMeasures> {
  final fluidController = TextEditingController();
  final massController = TextEditingController();
  final bpSController = TextEditingController();
  final bpDController = TextEditingController();
  double? dailyMass;
  DateTime? date;
  String? formatedDate;
  double? fluidIntake;
  int? bpSystolic;
  int? bpDiastolic;

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    dailyMass = ref.watch(bodyMass);
    fluidIntake = ref.watch(fluidProvider);
    bpSystolic = ref.watch(systolicProvider);
    bpDiastolic = ref.watch(diastolicProvider);
    date = ref.watch(dateSelect);
    formatedDate = DateFormat.yMMMMd().format(date!);

    return Scaffold(
      appBar: const NestedAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Select Date for Entry'),
            Button(
              pressed: () async {
                final selectedDate = await showDatePicker(
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
                if (selectedDate == null) {
                  return;
                } else {
                  ref.read(dateSelect.notifier).state = selectedDate;
                }
              },
              height: 0.09,
              width: mediaWidth <= 750 ? 0.35 : 0.2,
              colour: thirdColour,
              child: const Center(
                child: Text(
                  'Select Date',
                  style: TextStyle(
                    fontSize: 20,
                    color: secondaryColour,
                  ),
                ),
              ),
            ),
            Text(formatedDate!),
            const Text('Record today\'s body mass:'),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: massController,
              hintText: '$dailyMass',
              suffix: 'kg',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            const Text('Record your fluid intake below:'),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: fluidController,
              hintText: '$fluidIntake',
              suffix: 'L',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            const Text('Record your blood pressure below:'),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: bpSController,
              hintText: '$bpSystolic',
              suffix: '',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: bpDController,
              hintText: '$bpDiastolic',
              suffix: '',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            Button(
              pressed: () async {
                //change to conditionals and implement add/ update db
                massController.text == ''
                    ? ref.read(bodyMass.notifier).state = ref.watch(bodyMass)
                    : ref.read(bodyMass.notifier).state =
                        double.parse(massController.text);
                dailyMass = ref.watch(bodyMass);
                fluidController.text == ''
                    ? ref.read(fluidProvider.notifier).state =
                        ref.watch(fluidProvider)
                    : ref.read(fluidProvider.notifier).state =
                        double.parse(fluidController.text);
                fluidIntake = ref.watch(fluidProvider);
                bpSController.text == ''
                    ? ref.read(systolicProvider.notifier).state =
                        ref.watch(systolicProvider)
                    : ref.read(systolicProvider.notifier).state =
                        int.parse(bpSController.text);
                bpSystolic = ref.watch(systolicProvider);
                bpDController.text == ''
                    ? ref.read(diastolicProvider.notifier).state =
                        ref.watch(diastolicProvider)
                    : ref.read(diastolicProvider.notifier).state =
                        int.parse(bpDController.text);
                bpDiastolic = ref.watch(diastolicProvider);

                final date = ref.watch(dateSelect);

                //Need to order by date and check if date is in DB

                final entry = Entry(
                  date: date,
                  mass: double.parse(massController.text),
                  fluid: double.parse(fluidController.text),
                  bPS: int.parse(bpSController.text),
                  bPD: int.parse(bpDController.text),
                );
                objectBox.insertEntry(entry);
                //show snackBar
                Beamer.of(context).beamToNamed('/dashboard');
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
