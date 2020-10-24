import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:passbase_flutter/passbase_flutter.dart';

class PassBase extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    PassbaseSDK.initialize( publishableApiKey: 'JiZ1Ku3aFqfe7ymtx3t2ekwcsEx0wpwoxYYKT2NTuNjsIBHxDXCYtvXIU4Mz9ltz');
    PassbaseSDK.prefillUserEmail = "testuser@yourproject.com"; //optional
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<PassBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text('PassBase',),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PassbaseButton(
              onFinish: (identityAccessKey) {
// do stuff in case of success
                print(identityAccessKey);
              },
              onError: (errorCode) {
// do stuff in case of cancel
                print(errorCode);
              },
              onStart: () {
// do stuff in case of start
                print("start");
              },
              width: 300,
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
