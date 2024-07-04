import 'package:flutter/material.dart';
import 'package:leap_logic/util/global.dart';

class BoardPlaements extends StatelessWidget {
  final int stateIndex;
  const BoardPlaements({super.key, required this.stateIndex});

  Color checker(int index) {
    if (boardState[stateIndex][index] == 0) {
      return Colors.black;
    } else if (boardState[stateIndex][index] == 1) {
      return Colors.white;
    } else {
      return Colors.grey.shade800;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(14),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(13),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(12),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(11),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(10),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(9),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(8),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(7),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(6),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(5),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(4),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(3),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(2),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(1),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width / 6.7,
                  width: MediaQuery.of(context).size.width / 6.7,
                  decoration: BoxDecoration(
                      color: checker(0),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.white, blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
