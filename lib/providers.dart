import 'package:flutter_riverpod/flutter_riverpod.dart';

final bodyMass = StateProvider<double>((ref) => 114.5);
final baselineMass = StateProvider<double>((ref) => 115.0);
final dateSelect = StateProvider<DateTime>((ref) => DateTime.now());
