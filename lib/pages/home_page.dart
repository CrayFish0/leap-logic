import 'package:flutter/material.dart';
import 'package:leap_logic/util/board_plaements.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int boardIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  void indexChange(int newIndex) {
    if (newIndex < 0) {
      newIndex = 0;
    } else if (newIndex > 14) {
      newIndex = 14;
    }
    setState(() {
      boardIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: BoardPlaements(
                  stateIndex: boardIndex,
                ),
              )
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3.1,
                      child: IconButton(
                          onPressed: () {
                            indexChange(boardIndex - 1);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3.1,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.restart_alt,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3.1,
                      child: IconButton(
                          onPressed: () {
                            indexChange(boardIndex + 1);
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
