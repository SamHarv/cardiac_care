import 'package:flutter_riverpod/flutter_riverpod.dart';

final bodyMass = StateProvider<double>((ref) => 114.5);
final baselineMass = StateProvider<double>((ref) => 115.0);
final bufferProvider = StateProvider<double>((ref) => 2.0);
final fluidRestrictionProvider = StateProvider<double>((ref) => 1.5);
final fluidProvider = StateProvider<double>((ref) => 1.5);
final dateSelect = StateProvider<DateTime>((ref) => DateTime.now());
final systolicProvider = StateProvider<int>((ref) => 120);
final diastolicProvider = StateProvider<int>((ref) => 80);
