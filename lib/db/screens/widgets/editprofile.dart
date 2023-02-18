import 'dart:io';


import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_samle/db/functions/db_functions.dart';
import 'package:hive_samle/db/model/data_model.dart';
import 'package:hive_samle/db/screens/home_screen.dart';

import 'package:image_picker/image_picker.dart';

import '../home_screen.dart';

class EditProfile extends StatefulWidget {
  EditProfile(
      {Key? key,
      // required this.passValue01,
      required this.index,
      required this.passValueProfile})
      : super(key: key);

  StudentModel passValueProfile;
  int index;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late final _nameController = TextEditingController(text:widget.passValueProfile.name);

  late final _ageController = TextEditingController(text: widget.passValueProfile.age);

 late final _numController = TextEditingController(text: widget.passValueProfile.num);

  String? imagePath;

  // final ImagePicker _picker = ImagePicker();

//function or widget==================================================

  // ignore: non_constant_identifier_names
  Future<void> StudentAddBtn(int index) async {    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    final _number = _numController.text.trim();
    // final _image = imagePath;

    if (_name.isEmpty || _age.isEmpty || _number.isEmpty) {
      return;
    }
    print('$_name $_age $_number');

    final _students = StudentModel(
      name: _name,
      age: _age,
      num: _number,
      image: imagePath?? widget.passValueProfile.image,
    );
    final studentDB = await Hive.openBox<StudentModel>('student_db');
    studentDB.putAt(index, _students);
    getAllStudents();
  }

  Future<void> takePhoto() async {
    // ignore: non_constant_identifier_names
    final PickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (PickedFile != null) {
      setState(() {
        imagePath = PickedFile.path;
      });
    }
  }

  Widget elavatedbtn() {
    return ElevatedButton.icon(
      onPressed: () {
        StudentAddBtn(widget.index);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx) => const Home_Screen()),
            (route) => false);
      },
      icon: const Icon(Icons.update_rounded),
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
      // initialValue: 'hintName',
    );
  }

  Widget dpImage() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 75,
          // backgroundImage:FileImage(File(imagePath??widget.passValueProfile.image!)),
          backgroundImage: backImage()
              
              // : FileImage(File(imagePath??widget.passValueProfile.image!)),
        ),
        Positioned(
            bottom: 10,
            right: 25,
            child: InkWell(
                child: const Icon(
                  Icons.add_a_photo_rounded,
                  size: 30,

                ),
                onTap: () {
                  takePhoto();
                })),
      ],
    );
  }

  Widget szdBox = const SizedBox(height: 20);

  //build======================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
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
  backImage(){
    if( widget.passValueProfile.image == 'x' && imagePath==null){
              return AssetImage('assets/pp3.jpg') as ImageProvider;}
              else if(imagePath !=null){
                return FileImage(File(imagePath!));
              }
              else{
                return  FileImage(File(widget.passValueProfile.image!));
              }

  }
}