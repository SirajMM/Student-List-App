


import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:hive_samle/db/model/data_model.dart';
import 'package:image_picker/image_picker.dart';
import '../../functions/db_functions.dart';



class AddStudent_w extends StatefulWidget {
  AddStudent_w({super.key});

  @override
  State<AddStudent_w> createState() => _AddStudent_wState();
}

class _AddStudent_wState extends State<AddStudent_w> {
  final _nameController = TextEditingController();

  final _ageController = TextEditingController();

  final _numController=TextEditingController();
  String? imagePath='x';

  Future<void> onAddStudentButtonClick(BuildContext ctx) async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    final _num=_numController.text.trim();
    
      
    if (_name.isEmpty || _age.isEmpty||_num.isEmpty) {
      
      return; 
    }
    // print('$_name $_age $_num');
    // } else {
    //   Navigator.of(ctx).push(MaterialPageRoute(builder:((context) =>Home_Screen() )));
    // }
    // print('$_name $_age');

    final _student = StudentModel(
      name: _name,
       age: _age,
       num:_num,
       image: imagePath,
        );

    addStudent(_student);
  }
  Future<void>takePhoto()async{
    final PickedFile=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(PickedFile !=null){
      setState(() {
        imagePath=PickedFile.path;
      });
    }
  }

 Widget elavatedbtn({required Icon myIcon, required Text myLabel}) {
    return ElevatedButton.icon(
      onPressed: () {
        if(_ageController.text.isNotEmpty&&_nameController.text.isNotEmpty&&_numController.text.isNotEmpty){
         onAddStudentButtonClick(context);
         Navigator.of(context).pop();
        }else{
         alert(context);
        }
        

        
      },
      icon: myIcon,
      label: myLabel,
    );
  }

  Widget textFieldName(
      {required TextEditingController myController, hintName}) {
    return TextFormField(
     
      // textCapitalization: TextCapitalization.characters,
      controller: myController,
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(234, 236, 238, 2),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        hintText: hintName,
      ),
    );
  }
   Widget textFieldNum(
      {required TextEditingController myController, hintName}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      // textCapitalization: TextCapitalization.characters,
      controller: myController,
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(234, 236, 238, 2),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        hintText: hintName,
      ),
    );
  }

  Widget dpImage() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 75,
          backgroundImage: imagePath == 'x'
              ? AssetImage('assets/pp3.jpg') as ImageProvider
              :FileImage(File(imagePath!)),
        ),
        Positioned(
            bottom: 10,
            right: 25,
            child: InkWell(
                child: const Icon(
                  Icons.add_a_photo_outlined,
                  size: 30,
                ),
                onTap: () {
                  takePhoto();
                })),
      ],
    );
  }

  Widget szdBox = const SizedBox(height: 20);

  //buider------------------------------------------------------


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Student'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              dpImage(),
              szdBox,
              textFieldName(myController: _nameController, hintName: "Name"),
              szdBox,
              textFieldNum( 
                myController: _ageController, hintName: "Age"),
              szdBox,
              textFieldNum(myController: _numController, hintName: "Number"),
              szdBox,
              elavatedbtn(
                  myIcon: const Icon(Icons.person_add_alt_outlined),
                  myLabel: const Text('Add student')),
              // elavatedbtn(
              //     myIcon: Icon(Icons.access_alarm), myLabel: 'saample2'),
            ]),
          ),
        ));
  }
   alert(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        content: Text("Field Required",style: TextStyle(color: Colors.red),)));
  }


  

  
}
