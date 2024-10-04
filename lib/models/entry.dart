import 'package:objectbox/objectbox.dart';

@Entity()
class Entry {
  int id;
  DateTime date;
  double mass;
  double fluid;
  int bPS;
  int bPD;

  Entry({
    this.id = 0,
    required this.date,
    required this.mass,
    required this.fluid,
    required this.bPS,
    required this.bPD,
  });
}
