import 'package:chf_app/objectbox.g.dart' as objectbox_g;

import '../models/entry.dart';
import '../objectbox.g.dart';

class ObjectBox {
  late final Store _store;
  late final Box<Entry> _entryBox;

  ObjectBox._init(this._store) {
    _entryBox = Box<Entry>(_store);
  }

  static Future<ObjectBox> init() async {
    final store = await openStore();
    return ObjectBox._init(store);
  }

  //read entry
  Entry? getEntry(int id) => _entryBox.get(id);

  //read all entries
  Stream<List<Entry>> getEntries() {
    final query = _store.box<Entry>().query()
      ..order(objectbox_g.Entry_.date, flags: Order.descending);
    return query.watch(triggerImmediately: true).map((query) => query.find());
  }

  //create / update entry
  int insertEntry(Entry entry) => _entryBox.put(entry);

  //delete entry
  bool deleteEntry(int id) => _entryBox.remove(id);
}
