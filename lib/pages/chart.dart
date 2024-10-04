import 'package:chf_app/widgets/nested_appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../main.dart';
import '../models/entry.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  late Stream<List<Entry>> streamEntries;

  @override
  void initState() {
    streamEntries = objectBox.getEntries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NestedAppBar(),
      body: StreamBuilder<List<Entry>>(
        stream: streamEntries,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final entries = snapshot.data!;
            return ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];
                return ListTile(
                  leading: Text('${entry.bPS} / ${entry.bPD}'),
                  title: Text(DateFormat.yMMMMd().format(entry.date)),
                  subtitle: Text(
                      '${entry.mass.toString()}, ${entry.fluid.toString()}'),
                  trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                      ),
                      onPressed: () {
                        objectBox.deleteEntry(entry.id);
                      }),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final entry = Entry(
            date: DateTime(2023, 5, 31),
            mass: 115.9,
            fluid: 1.5,
            bPS: 120,
            bPD: 80,
          );
          objectBox.insertEntry(entry);
        },
      ),
    );
  }
}
