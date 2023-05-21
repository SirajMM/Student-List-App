// ignore_for_file: non_constant_identifier_names, camel_case_types, no_leading_underscores_for_local_identifiers
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_samle/application/student_bloc/student_bloc.dart';
import 'package:hive_samle/db/model/data_model.dart';
import 'package:image_picker/image_picker.dart';

class AddStudent_w extends StatefulWidget {
  const AddStudent_w({super.key});

  @override
  State<AddStudent_w> createState() => _AddStudent_wState();
}

class _AddStudent_wState extends State<AddStudent_w> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _numController = TextEditingController();
  String imagePath = 'x';

  Widget szdBox = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    CupertinoIcons.chevron_down,
                    size: 28,
                  ),
                ),
                const Text(
                  'Add Student',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // dpImage(_imageNotifier),

            Stack(
              children: [
                CircleAvatar(
                    radius: 75,
                    backgroundImage: imagePath == 'x' || imagePath.isEmpty
                        ? const AssetImage('assets/defaultDp.jpg')
                            as ImageProvider
                        : FileImage(File(imagePath))),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: InkWell(
                    onTap: () async {
                      final pickedFile = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (pickedFile != null) {
                        setState(() {
                          imagePath = pickedFile.path;
                        });
                      }
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.deepPurple.shade300,
                      radius: 20,
                      child: const Icon(
                        CupertinoIcons.camera,
                        size: 23,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            szdBox,
            textFieldName(myController: _nameController, hintName: "Name"),
            szdBox,
            textFieldNum(
                myController: _ageController,
                hintName: "Age",
                iconData: Icons.description),
            szdBox,
            textFieldNum(
              myController: _numController,
              hintName: "Number",
              iconData: Icons.contacts,
            ),
            szdBox,
            elavatedbtn(
                myIcon: const Icon(CupertinoIcons.person_add),
                myLabel: const Text('Add student')),
          ]),
        ),
      ),
    ));
  }

  alert(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        content: Text(
          "Name,Age,Number Required",
          style: TextStyle(color: Colors.red),
        )));
  }

  Future<void> onAddStudentButtonClick(BuildContext ctx) async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    final _num = _numController.text.trim();
    final _studentDetails = StudentModel(
      name: _name,
      age: _age,
      num: _num,
      image: imagePath,
    );
    context.read<StudentBloc>().add(AddStudent(_studentDetails));
  }

  Future<void> takePhoto(_imageNotifier) async {}

  Widget elavatedbtn({required Icon myIcon, required Text myLabel}) {
    return ElevatedButton.icon(
      onPressed: () {
        if (_ageController.text.isNotEmpty &&
            _nameController.text.isNotEmpty &&
            _numController.text.isNotEmpty) {
          onAddStudentButtonClick(context);
          Navigator.of(context).pop();
        } else {
          alert(context);
        }
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple.shade200,
          foregroundColor: Colors.black),
      icon: myIcon,
      label: myLabel,
    );
  }

  Widget textFieldName(
      {required TextEditingController myController, hintName}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.contact_page,
          color: Colors.black.withOpacity(.6),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            controller: myController,
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(234, 236, 238, 2),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)),
              hintText: hintName,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }

  Widget textFieldNum(
      {required TextEditingController myController,
      hintName,
      required IconData iconData}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          iconData,
          color: Colors.black.withOpacity(.6),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: myController,
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(234, 236, 238, 2),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)),
              hintText: hintName,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }

  // Widget dpImage(_imageNotifier) {
  //   return
  // }
}
