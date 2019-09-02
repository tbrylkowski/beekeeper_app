import 'package:flutter_test/flutter_test.dart';
import 'package:bee_app/models/hive_data.dart';

void main() {
  test("Check hive class", () {
    final dateTime = DateTime.parse("2019-02-12");
    final hive = Hive(dateTime, 2);
    expect(hive.hiveNumber, "2");
    expect(hive.startDate, dateTime);
  });
}
