import 'package:flutter/foundation.dart';
import 'hive_data.dart';

class HivesData extends ChangeNotifier {

  List<Hive> _list = [
    Hive(DateTime.now(), "3"),
    Hive(DateTime.now(), "4"),
    Hive(DateTime.now(), "5"),
  ];



  int get count => _list.length;

  List<Hive> get list => _list;

  void add(Hive item) {
    _list.add(item);
    notifyListeners();
  }

  void remove(int index){
    _list.removeAt(index);
    notifyListeners();
  }
}

// TODO: validate new Hive, to not add hive with the same number