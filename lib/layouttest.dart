import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key, required this.enteredNumber}) : super(key: key);
  final int enteredNumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) {
                return Sample(
                  index: index * 8 + 1,
                  enteredValue: enteredNumber,
                );
              })),
    );
  }
}

class Sample extends StatelessWidget {

  Sample({Key? key, required this.index, required this.enteredValue})
      : super(key: key);

  final int enteredValue;
  final int index;

  final Border b = const Border(
    top: BorderSide(width: 2, color: Colors.blueAccent),
    left: BorderSide(width: 2, color: Colors.blueAccent),
    right: BorderSide(width: 2, color: Colors.blueAccent),
    bottom: BorderSide(width: 2, color: Colors.blueAccent),
  );
  final containerPadding = EdgeInsets.all(2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: enteredValue == index
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          height: 50,
                          width: 50,
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Lower",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        ),
                      ),
                      Padding(
                        padding: containerPadding,
                        child: Container(
                          decoration: BoxDecoration(
                            color: enteredValue == index + 1
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          height: 50,
                          width: 50,
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index + 1).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Middle",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        ),
                      ),
                      Padding(
                        padding: containerPadding,
                        child: Container(
                          decoration: BoxDecoration(
                            color: enteredValue == index + 2
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          height: 50,
                          width: 50,
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index + 2).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Upper",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: containerPadding,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: enteredValue == index + 6
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index + 6).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text("Side\nLower",
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center),
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: containerPadding,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: enteredValue == index + 3
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index + 3).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Lower",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        ),
                      ),
                      Padding(
                        padding: containerPadding,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: enteredValue == index + 4
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index + 4).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Middle",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        ),
                      ),
                      Padding(
                        padding: containerPadding,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: enteredValue == index + 5
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index + 5).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Upper",
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: containerPadding,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: enteredValue == index + 7
                                ? Colors.greenAccent
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: b,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                (index + 7).toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Side\nUpper",
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
