import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class TestUtils {
  Future<void> renderWidget(Widget widget, WidgetTester tester) async {
    await tester.pumpWidget(widget);
  }

  Finder findElementByText(String text) {
    return find.text(text, skipOffstage: false);
  }

  Finder findElementByKey(Key key) {
    return find.byKey(key, skipOffstage: false);
  }

  Finder findElementByIcon(IconData icon) {
    return find.byIcon(icon);
  }

  Finder findElementByType(Type type) {
    return find.byType(type);
  }

  Future<void> tapOnElement(Finder element, WidgetTester tester) async {
    await tester.tap(element);
    await tester.pump();
  }
}
