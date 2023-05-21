// ignore_for_file: prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_samle/db/model/data_model.dart';

class StudentProfile extends StatelessWidget {
  StudentProfile(
      {Key? key, required this.passValue, required this.passId, this.id})
      : super(key: key);

  StudentModel passValue;
  final int passId;
  final int? id;

  @override
  Widget build(BuildContext context) {
    var respSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(CupertinoIcons.back)),
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // centerTitle: ,
      ),
      body: ListView(children: <Widget>[
        top(respSize),
        content(),
      ]),
      // floatingActionButton: floatbtn(context),
    );
  }

  Widget top(respSize) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
          margin: EdgeInsets.only(bottom: respSize * 0.2),
          child: Container(
            width: double.infinity,
            height: respSize * 0.35,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100))),
          )),
      Positioned(
          top: respSize * 0.2,
          left: respSize * 0.34,
          child: CircleAvatar(
            backgroundImage: passValue.image == 'x' || passValue.image.isEmpty
                ? AssetImage('assets/defaultDp.jpg') as ImageProvider
                : FileImage(File(passValue.image)),
            radius: respSize * 0.17,
          )),
    ]);
  }

  Widget content() {
    return SizedBox(
      width: 200,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            ' ${passValue.name}',
            style: const TextStyle(fontSize: 28, fontFamily: 'Ubuntu'),
          ),
          Text('Age : ${passValue.age}',
              style: const TextStyle(fontSize: 18, color: Colors.grey)),
          Text('Number : ${passValue.num}',
              style: const TextStyle(fontSize: 18, color: Colors.grey)),
        ],
      ),
    );
  }

  // Widget floatbtn(BuildContext context) {
  //   return FloatingActionButton(
  //       onPressed: () {
  //         Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //                 builder: (context) => EditProfile(
  //                       passValueProfile: passValue,
  //                       index: passId,
  //                     )));
  //       },
  //       child: const Icon(Icons.edit_outlined));
  // }
}
