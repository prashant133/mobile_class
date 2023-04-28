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

// class CheckGreater {
//   int correctAns = 0;
//   int incorrectAns = 0;
//   NumberGenerator numberGenerator = NumberGenerator();

//   int checkGreater(int number) {
//     int randomNumber1 = numberGenerator.tellMeNumber1(number);
//     int randomNumber2 = numberGenerator.tellMeNumber2(number);

//     if (randomNumber1 > randomNumber2) {
//       correctAns++;
//       print(randomNumber1);
//     } else {
//       incorrectAns++;
//     }
//     return number;
//   }
  
// }
