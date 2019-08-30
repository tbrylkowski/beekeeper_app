import 'package:flutter/foundation.dart';
import 'hive_data.dart';

class HivesData extends ChangeNotifier {
  List<Hive> _list = [];
  

  int get count => _list.length;

  List<Hive> get list => _list;

  void add(Hive item) {
    _list.add(item);
    notifyListeners();
  }
}
