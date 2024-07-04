import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:leap_logic/model/solver.dart';
import 'package:leap_logic/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/board.png'),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  textAlign: TextAlign.center,
                  'ENTER THE INDEX WHERE YOU WANT THE HOLE TO BE',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(color: Colors.white, blurRadius: 10)
                    ]),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  controller: myController,
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                log(myController.text);
                var indexNo = 0;
                try {
                  indexNo = int.parse(myController.text);
                } catch (e) {
                  indexNo = 0;
                }
                if (indexNo > 15) {
                  indexNo = 15;
                } else if (indexNo < 1) {
                  indexNo = 1;
                }
                myController.clear();
                solutionSetter(indexNo - 1);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                height: 90,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(color: Colors.white, blurRadius: 5)
                    ]),
                child: const Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
