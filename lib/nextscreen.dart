// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_x/logic.dart';

class Nextscreen extends StatefulWidget {
  const Nextscreen({Key? key}) : super(key: key);

  @override
  _NextscreenState createState() => _NextscreenState();
}

class _NextscreenState extends State<Nextscreen> {
  final Logicfile c = Get.put(Logicfile());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 100),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('Count Number:${c.count}'),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('Change Theme'),
                    GetBuilder<Logicfile>(
                      builder: (context) => Switch(
                          value: c.thememode,
                          onChanged: (value) {
                            c.changeThemes(value);
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
