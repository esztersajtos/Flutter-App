// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'common_methods.dart';

void main() {
  group('My First App', () {
    // First, defin the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
  
    

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

    test('first question', () async {
  
      Future.delayed(Duration(seconds:30));
      CommonMethods(driver).verifyText("What's your favorite color?");
      CommonMethods(driver).tapFirstAnswer();
    });

    // test('choose an answer', () async {
    //   // First, tap the button.
    //   await driver.tap(buttonFinder);

    //   // Then, verify the counter text is incremented by 1.
    //   expect(await driver.getText(questionTextFinder), "What's your favorite anilmal?");
    // });
  });
}
