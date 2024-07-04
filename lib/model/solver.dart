import 'dart:developer';
import 'package:leap_logic/model/algorithm.dart';
import 'package:leap_logic/util/global.dart';

void solutionSetter(int userInput) {
  PegSolitaire solver = PegSolitaire();
  log('1');
  initialBoardState(userInput);
  log('2');
  int hole = userInput;
  int goal = 1;
  log('Hole is at position $hole, Goal is $goal peg remaining');
  solver.makeHole(hole);
  if (solver.findSolutions(goal, 0)) {
    solver.printResult();
  } else {
    log('No solution found');
  }

  // log(newsolution.toString());
  boardSequence();
  cleanup();
  log(boardState.toString());
}

void initialBoardState(int hole) {
  int index = 0;
  while (index < 15) {
    if (index == hole) {
      boardState[0][index] = 0;
    } else {
      boardState[0][index] = 1;
    }
    index += 1;
  }
}

void boardSequence() {
  for (int index = 1; index < 14; index += 1) {
    for (int i = 0; i < 15; i++) {
      boardState[index][i] =
          boardState[index - 1][i] == -1 ? 0 : boardState[index - 1][i];
    }

    int current = newsolution[index - 1][0];
    int over = newsolution[index - 1][1];
    int newp = newsolution[index - 1][2];

    boardState[index][current] = -1;
    boardState[index][over] = 0;
    boardState[index][newp] = 1;
  }
}

void cleanup() {
  for (int i = 0; i < 15; i++) {
    boardState[14][i] = boardState[13][i] == -1 ? 0 : boardState[13][i];
  }
}
