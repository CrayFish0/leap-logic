import 'package:leap_logic/util/global.dart';

class PegSolitaire {
  final List<List<int>> solutions = [
    [0, 1, 3],
    [0, 2, 5],
    [1, 3, 6],
    [1, 4, 8],
    [2, 4, 7],
    [2, 5, 9],
    [3, 1, 0],
    [3, 6, 10],
    [3, 4, 5],
    [3, 7, 12],
    [4, 7, 11],
    [4, 8, 13],
    [5, 2, 0],
    [5, 9, 14],
    [5, 8, 12],
    [5, 4, 3],
    [6, 3, 1],
    [6, 7, 8],
    [7, 4, 2],
    [7, 8, 9],
    [8, 4, 1],
    [8, 7, 6],
    [9, 5, 2],
    [9, 8, 7],
    [10, 11, 12],
    [10, 6, 3],
    [11, 7, 4],
    [11, 12, 13],
    [12, 7, 3],
    [12, 11, 10],
    [12, 13, 14],
    [12, 8, 5],
    [13, 8, 4],
    [13, 12, 11],
    [14, 9, 5],
    [14, 13, 12]
  ];

  int index = 0;

  List<int> pegs = List.filled(15, 0);
  List<List<int>> result = List.generate(13, (_) => List.filled(3, 0));

  PegSolitaire() {
    for (int i = 0; i < pegs.length; i++) {
      pegs[i] = 0;
    }
  }

  void makeHole(int holeIndex) {
    pegs[holeIndex] = -1;
  }

  bool legalMove(int r) {
    int from = pegs[solutions[r][0]];
    int over = pegs[solutions[r][1]];
    int into = pegs[solutions[r][2]];
    return from == 0 && over == 0 && into == -1;
  }

  int pegsRemain() {
    int count = 0;
    for (int i in pegs) {
      if (i == 0) {
        count++;
      }
    }
    return count;
  }

  void makeMove(int r) {
    pegs[solutions[r][2]] = 0;
    pegs[solutions[r][1]] = -1;
    pegs[solutions[r][0]] = -1;
  }

  void revert(int r) {
    pegs[solutions[r][2]] = -1;
    pegs[solutions[r][1]] = 0;
    pegs[solutions[r][0]] = 0;
  }

  bool findSolutions(int goal, int r) {
    if (pegsRemain() == goal) {
      return true;
    }
    for (int i = 0; i < solutions.length; i++) {
      if (legalMove(i)) {
        makeMove(i);
        if (findSolutions(goal, r + 1)) {
          result[r][0] = solutions[i][0];
          result[r][1] = solutions[i][1];
          result[r][2] = solutions[i][2];
          return true;
        } else {
          revert(i);
        }
      }
    }
    return false;
  }

  void printResult() {
    for (List<int> move in result) {
      newsolution[index][0] = move[0];
      newsolution[index][1] = move[1];
      newsolution[index][2] = move[2];
      index += 1;
    }
  }
}
