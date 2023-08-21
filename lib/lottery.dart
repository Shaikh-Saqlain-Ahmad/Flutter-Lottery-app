import 'package:flutter/material.dart';
import 'dart:math';

class Lottery extends StatefulWidget {
  const Lottery({super.key});

  @override
  State<Lottery> createState() => _LotteryState();
}

Random random = Random();
Random random2 = Random();
int y = 0;
int x = 0;

class _LotteryState extends State<Lottery> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('LOTTERY APP'))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Price of lottery will be given to $y")),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: x == y
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Congratulations you won the lottery ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            )
                          ])
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'your number is $x so try again and better luck next time ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            )
                          ]),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            y = random2.nextInt(10);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
