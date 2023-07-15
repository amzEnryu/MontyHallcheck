import 'dart:math';

void main() {
  const int tests = 10000;
  int stayWins = 0;
  int switchWins = 0;

  for (int i = 0; i < tests; i++) {
    int prizeDoor = Random().nextInt(3);
    int playerChoice = Random().nextInt(3);

    // Monty chọn cửa để mở
    int montyChoice;
    do {
      montyChoice = Random().nextInt(3);
    } while (montyChoice == prizeDoor || montyChoice == playerChoice);

    // Thực hiện việc thay đổi lựa chọn
    int switchedChoice;
    do {
      switchedChoice = Random().nextInt(3);
    } while (switchedChoice == playerChoice || switchedChoice == montyChoice);

    if (playerChoice == prizeDoor) {
      stayWins++;
    } else if (switchedChoice == prizeDoor) {
      switchWins++;
    }
  }

  print('Khi không đổi lựa chọn: ${stayWins * 100 / tests}%');
  print('Khi thay đổi lựa chọn: ${switchWins * 100 / tests}%');
}
