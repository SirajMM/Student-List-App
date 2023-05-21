// ignore_for_file: no_leading_underscores_for_local_identifiers, unnecessary_cast, must_be_immutable

import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_samle/application/student_bloc/student_bloc.dart';
import 'package:hive_samle/db/model/data_model.dart';
import 'package:hive_samle/presentation/home/home_screen.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key, required this.index, required this.passValueProfile})
      : super(key: key);

  StudentModel passValueProfile;
  int index;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late final _nameController =
      TextEditingController(text: widget.passValueProfile.name);

  late final _ageController =
      TextEditingController(text: widget.passValueProfile.age);

  late final _numController =
      TextEditingController(text: widget.passValueProfile.num);

  String imagePath = 'x';

  Future<void> studentAddBtn(int index) async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    final _number = _numController.text.trim();

    if (_name.isEmpty || _age.isEmpty || _number.isEmpty) {
      return;
    }
    log('$_name $_age $_number');

    final _students = StudentModel(
      name: _name,
      age: _age,
      num: _number,
      image: imagePath == 'x' ? widget.passValueProfile.image : imagePath,
    );

    context.read<StudentBloc>().add(UpdateData(index, _students));
  }

  Widget elavatedbtn() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple.shade200,
          foregroundColor: Colors.black),
      onPressed: () {
        studentAddBtn(widget.index);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx) => const Home_Screen()),
            (route) => false);
      },
      icon: const Icon(
        Icons.update_rounded,
      ),
      label: const Text('Update'),
    );
  }

  Widget textFieldName(
      {required TextEditingController myController, required String hintName}) {
    return TextFormField(
      autofocus: false,
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
      ),
    );
  }

  Widget szdBox = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    log(widget.passValueProfile.image.toString());
    log(imagePath.toString());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
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
                'Edit',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          dpImage(),
          szdBox,
          textFieldName(
              myController: _nameController,
              hintName: widget.passValueProfile.name),
          szdBox,
          textFieldName(
              myController: _ageController,
              hintName: widget.passValueProfile.age),
          szdBox,
          textFieldName(
              myController: _numController,
              hintName: widget.passValueProfile.num),
          szdBox,
          elavatedbtn(),
        ]),
      ),
    ));
  }

  Stack dpImage() {
    return Stack(
      children: [
        CircleAvatar(radius: 75, backgroundImage: backImage()),
        Positioned(
            bottom: 5,
            right: 10,
            child: InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple.shade300,
                  radius: 20,
                  child: const Icon(
                    CupertinoIcons.camera,
                    size: 23,
                  ),
                ),
                onTap: () async {
                  final pickedFile = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  if (pickedFile != null) {
                    setState(() {
                      imagePath = pickedFile.path;
                    });
                  }
                })),
      ],
    );
  }

  backImage() {
    if (imagePath != 'x') {
      return FileImage(File(imagePath));
    } else if (widget.passValueProfile.image == 'x') {
      return const AssetImage('assets/defaultDp.jpg');
    } else if (widget.passValueProfile.image != 'x' && imagePath == 'x') {
      return FileImage(File(widget.passValueProfile.image));
    }
  }
}
