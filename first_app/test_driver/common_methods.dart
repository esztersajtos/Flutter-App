import 'package:flutter_driver/flutter_driver.dart';

class CommonMethods {
  FlutterDriver driver;

  CommonMethods(FlutterDriver driver) {
    this.driver = driver;
  }

  void verifyText(String textToVerify) async {
    await driver.waitFor(find.text(textToVerify));
  }


  final firstAnswerButton = find.text("Black");
  Future<void> tapFirstAnswer() async {
    return await driver.tap(firstAnswerButton);
  }

    final secondAnswerButton = find.text("Max");
  Future<void> tapSecondAnswer() async {
    return await driver.tap(secondAnswerButton);
  }
}