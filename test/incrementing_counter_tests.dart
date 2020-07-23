import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lumen_project/homePage.dart';
import 'package:lumen_project/widgets_key.dart';
import 'test_utils.dart';

void main() {
  TestUtils utils = TestUtils();

  testWidgets('Incrementing button using find by unique key',
      (WidgetTester tester) async {
    await utils.renderWidget(
        MyHomePage(title: 'Incrementing button test'), tester);

    final appBarTitle = utils.findElementByText('Incrementing button test');
    expect(appBarTitle, findsOneWidget);

    final incrementFAB = utils.findElementByKey(incrementButtonKey);
    expect(incrementFAB, findsOneWidget);

    for (var index = 0; index < 10; index++) {
      final textCountFinder = utils.findElementByText(index.toString());
      expect(textCountFinder, findsOneWidget);

      await utils.tapOnElement(incrementFAB, tester);
      expect(textCountFinder, findsNothing);
    }
  });

  testWidgets('Incrementing button using find by Icon',
      (WidgetTester tester) async {
    await utils.renderWidget(
        MyHomePage(title: 'Incrementing button test'), tester);

    final appBarTitle = utils.findElementByText('Incrementing button test');
    expect(appBarTitle, findsOneWidget);

    final incrementFAB = utils.findElementByIcon(Icons.add);
    expect(incrementFAB, findsOneWidget);

    for (var index = 0; index < 10; index++) {
      final textCountFinder = utils.findElementByText(index.toString());
      expect(textCountFinder, findsOneWidget);

      await utils.tapOnElement(incrementFAB, tester);
      expect(textCountFinder, findsNothing);
    }
  });

  testWidgets('Incrementing button using find by Type',
      (WidgetTester tester) async {
    await utils.renderWidget(
        MyHomePage(title: 'Incrementing button test'), tester);

    final appBarTitle = utils.findElementByText('Incrementing button test');
    expect(appBarTitle, findsOneWidget);

    final incrementFAB = utils.findElementByType(FloatingActionButton);
    expect(incrementFAB, findsOneWidget);

    for (var index = 0; index < 10; index++) {
      final textCountFinder = utils.findElementByText(index.toString());
      expect(textCountFinder, findsOneWidget);

      await utils.tapOnElement(incrementFAB, tester);
      expect(textCountFinder, findsNothing);
    }
  });
}
