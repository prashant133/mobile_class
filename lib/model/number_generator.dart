import 'dart:math';

class NumberGenerator {
  int tellMeNumber1(int number) {
    final random = Random();
    final randomNumber1 = random.nextInt(101);
    return randomNumber1;
  }

  int tellMeNumber2(int number) {
    final random = Random();
    final randomNumber2 = random.nextInt(101);
    return randomNumber2;
  }
}

class CheckGreater {
  int correctAns = 0;
  int incorrectAns = 0;
  int totalClicks = 0;

  NumberGenerator numberGenerator = NumberGenerator();

  int checkGreater(int btnNumber) {
    int randomNumber1 = numberGenerator.tellMeNumber1(btnNumber);
    int randomNumber2 = numberGenerator.tellMeNumber2(btnNumber);

    if (totalClicks < 10) {
      if (btnNumber == 1) {
        if (randomNumber1 > randomNumber2) {
          correctAns++;
        } else {
          incorrectAns++;
        }
      } else if (btnNumber == 2) {
        if (randomNumber2 > randomNumber1) {
          correctAns++;
        } else {
          incorrectAns;
        }
      }
    }

    return btnNumber;
  }
}
