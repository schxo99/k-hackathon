import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  // virtual kakaotalk room list data
  final List<String> chatRooms = [
    'Friend 1',
    'Friend 2',
    'Friend 3',
    'Friend 4',
    'Friend 5',
  ];

  // Virtual schedule list data
  final List<String> events = [
    'Schedule 1',
    'Schedule 2',
    'Schedule 3',
    'Schedule 4',
    'Schedule 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double containerWidth =
                constraints.maxWidth * 0.9; // 90% of screen width
            double containerHeight =
                constraints.maxHeight * 0.4; // 40% of screen height

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    width: containerWidth,
                    height: containerHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Text(
                          '대화',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'NaverFont',
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            letterSpacing: 0.1,
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          child: ListView.builder(
                            itemCount: events.length,
                            itemBuilder: (context, index) {
                              final event = events[index];
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(10),
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(240, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  event,
                                  textAlign:
                                      TextAlign.start, // Align text to the left
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    width: containerWidth,
                    height: containerHeight,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Text(
                          '나의 일정',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'NaverFont',
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            letterSpacing: 0.1,
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          child: ListView.builder(
                            itemCount: events.length,
                            itemBuilder: (context, index) {
                              final event = events[index];
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  event,
                                  textAlign:
                                      TextAlign.start, // Align text to the left
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
