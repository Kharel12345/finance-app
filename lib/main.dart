import 'package:finance_app1/Theme/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter app Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _head(),
        ),
        SliverToBoxAdapter(
          child: _head(),
        )
      ],
    )));
  }

  Widget _head() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 280,
              decoration: const BoxDecoration(
                  color: AppStyle.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Stack(
                children: [
                  Positioned(
                      top: 5,
                      left: 330,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Container(
                          height: 40,
                          width: 40,
                          color: AppStyle.secondaryColor,
                          child: const Icon(
                            size: 30,
                            Icons.notification_add_rounded,
                            color: AppStyle.fourthColor,
                          ),
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Afternoon',
                          style: TextStyle(
                              color: AppStyle.fourthColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Amit Kharel',
                          style: TextStyle(
                              color: AppStyle.thirdColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 140,
          left: 32,
          child: Container(
            width: 320,
            height: 170,
            decoration: BoxDecoration(
                color: AppStyle.primaryColor,
                borderRadius: BorderRadius.circular(17),
                boxShadow: const [
                  BoxShadow(
                      color: AppStyle.secondaryColor,
                      offset: Offset(0, 6),
                      spreadRadius: 6,
                      blurRadius: 12),
                ]),
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(
                            color: AppStyle.fourthColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: AppStyle.fourthColor,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        '2530',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: AppStyle.secondaryColor,
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                              size: 19,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Income',
                            style: TextStyle(
                                color: AppStyle.fourthColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: AppStyle.secondaryColor,
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                              size: 19,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Expenses',
                            style: TextStyle(
                                color: AppStyle.fourthColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text(
                        '2344',
                        style: TextStyle(
                            color: AppStyle.fourthColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '7880',
                        style: TextStyle(
                            color: AppStyle.fourthColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
