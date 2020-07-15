import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'common_methods.dart';


void main() {
  group('My First App', () {

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });

    var answerButton = find.text("Green");

    test('first question', () async {
      Future.delayed(Duration(seconds:30));
      CommonMethods(driver).verifyText("Which lifes matters?");
      driver.tap(answerButton);
    });

    test('second question', () async {
      Future.delayed(Duration(seconds:30));
      CommonMethods(driver).verifyText("Click again your favorite color?");
      answerButton = find.text("Black");
      driver.tap(answerButton);
    });

    test('third question', () async {
      Future.delayed(Duration(seconds:30));
      CommonMethods(driver).verifyText("Who's your favorite instructor??");
      answerButton = find.text("Max1");
      driver.tap(answerButton);
      Future.delayed(Duration(seconds:30));
    });

    // test('choose an answer', () async {
    //   // First, tap the button.
    //   await driver.tap(buttonFinder);

    //   // Then, verify the counter text is incremented by 1.
    //   expect(await driver.getText(questionTextFinder), "What's your favorite animal?");
    // });
  });
}
