import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '/constants.dart';
import '/widgets/button.dart';
import '/widgets/nested_appbar.dart';
import '/widgets/text_field.dart';
import '/providers.dart';

class SetBaseline extends ConsumerStatefulWidget {
  const SetBaseline({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SetBaselineState();
}

class _SetBaselineState extends ConsumerState<SetBaseline> {
  final fluidRestrictionController = TextEditingController();
  final baselineMassController = TextEditingController();
  final bufferController = TextEditingController();
  double? setBaselineMass;
  double? buffer;
  DateTime? date;
  String? formatedDate;
  double? fluidRestriction;

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    setBaselineMass = ref.watch(baselineMass);
    fluidRestriction = ref.watch(fluidRestrictionProvider);
    buffer = ref.watch(bufferProvider);
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
            const Text('Record your mass buffer below:'),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: bufferController,
              hintText: '$buffer',
              suffix: 'kg',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            const Text('Record your fluid restriction below:'),
            MyTextField(
              mediaWidth: mediaWidth,
              height: mediaHeight * 0.09,
              controller: fluidRestrictionController,
              hintText: '$fluidRestriction',
              suffix: 'L',
              obscure: false,
              keyboardType: TextInputType.number,
            ),
            Button(
              pressed: () {
                baselineMassController.text == ''
                    ? ref.read(baselineMass.notifier).state =
                        ref.watch(baselineMass)
                    : ref.read(baselineMass.notifier).state =
                        double.parse(baselineMassController.text);
                setBaselineMass = ref.watch(baselineMass);
                bufferController.text == ''
                    ? ref.read(bufferProvider.notifier).state =
                        ref.watch(bufferProvider)
                    : ref.read(bufferProvider.notifier).state =
                        double.parse(bufferController.text);
                buffer = ref.watch(bodyMass);
                fluidRestrictionController.text == ''
                    ? ref.read(fluidRestrictionProvider.notifier).state =
                        ref.watch(fluidRestrictionProvider)
                    : ref.read(fluidRestrictionProvider.notifier).state =
                        double.parse(fluidRestrictionController.text);
                fluidRestriction = ref.watch(fluidRestrictionProvider);
                //Beamer.of(context).beamBack();
                //Add dailyMass result to list of Masses or Map with Date : Mass?
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
