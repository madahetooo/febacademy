import 'package:febacademy/reverse_string_app/reverse_string_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  testWidgets('Reverse String App Widgets test', (WidgetTester widgetTester) async{
    // Build our app and trigger a frame.
    await widgetTester.pumpWidget(ReverseStringApp());

    var textField = find.byType(TextField); // fin this text field
    expect(textField, findsOneWidget);

    await widgetTester.enterText(textField, 'Hello'); // enter text into textField
    expect(find.text('Hello'), findsOneWidget); // check if the text is there...

    var button = find.text('Reverse'); // check if there is a button
    expect(button, findsOneWidget);

    await widgetTester.tap(button);
    await widgetTester.pump();


    expect(find.text('olleH'), findsOneWidget);

  });
}