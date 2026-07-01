import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yokdil_saglik/main.dart';

void main() {
  testWidgets('App starts correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const YokdilSaglikApp());
    expect(find.text('YÖKDİL Sağlık'), findsOneWidget);
  });
}
