// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/logic.dart';

import 'package:get_x/nextscreen.dart';

class HomeScreen extends StatefulWidget {
  static const String path = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Logicfile c = Get.put(Logicfile());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GETX'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          c.increment();
        },
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 100),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('Count Number :${c.count}')),
              SizedBox(
                height: 40,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Get.to(() => Nextscreen());
                },
                label: Text('Next page'),
                icon: Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
