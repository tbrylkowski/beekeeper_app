import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:bee_app/widgets/add_hive_floating_action_butto.dart';
import 'package:bee_app/constants/strings.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      floatingActionButton: AddHiveFloatingActionButton(
          text: ADD_HIVE_FLOATING_ACTION_BUTTON_TEXT),
    ),
  );
  testWidgets("Floating action button has an icon and text",
      (WidgetTester tester) async {
    await tester.pumpWidget(app);
    final floatingActionWidget = find.byType(FloatingActionButton);
    final addIcon = find.byIcon(Icons.add);
    final fAButtonText = find.text(ADD_HIVE_FLOATING_ACTION_BUTTON_TEXT);

    expect(floatingActionWidget, findsNWidgets(1));
    expect(addIcon, findsOneWidget);
    expect(fAButtonText, findsOneWidget);
  });
}
