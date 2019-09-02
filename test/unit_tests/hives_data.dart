import 'package:flutter_test/flutter_test.dart';
import 'package:bee_app/models/index.dart';

void main() {
  group("Test group for HivesData class", () {
    test("Add item do listy", () {
      final hivesData = HivesData();
      hivesData.add(Hive(DateTime.now(), 12));
      expect(hivesData.count, 1);
    });
    test("Remove item from list", () {
      final hivesData = HivesData();
      hivesData.add(Hive(DateTime.now(), 12));
      expect(hivesData.count, 1);
      hivesData.remove(0);
      expect(hivesData.count, 0);
    });
  });
}
