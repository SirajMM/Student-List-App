
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_samle/db/functions/db_functions.dart';
import 'package:hive_samle/db/model/data_model.dart';
import 'package:hive_samle/db/screens/profile.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:
       (BuildContext ctx, List<StudentModel>studentList, Widget? child){

        return ListView.separated(
        itemBuilder: ((ctx,index){
          final data =studentList[index];
          return ListTile(
            // onTap: Navigator,
            leading: CircleAvatar(
              
              // backgroundImage: FileImage(File(data.image!)),
              radius: 30,
              backgroundImage: data.image == 'x'
              ? AssetImage('assets/pp3.jpg') as ImageProvider
              :FileImage(File(data.image!)),
            ),
              title: Text(data.name),
            subtitle: Text(data.age),
            onTap: (() {
             Navigator.push(context,
              MaterialPageRoute(
                builder: (context)=>StudentProfile(passId:index,passValue: data,)));
            }),

            trailing: IconButton(
              onPressed: (){
                deleteAlert(context, index);
                //deleteStudent(index);
              },
               icon:Icon(Icons.delete_outlined,
               color: Colors.red,
               )),

            
            
          );
        }), 
        separatorBuilder: (ctx,index){
          return Divider();
        },
         itemCount: studentList.length,
         );
      },
      
    );
  }
}

deleteAlert(BuildContext context, index) {
  showDialog(
      context: context,
      builder: ((ctx) => AlertDialog(
            content: const Text('Are you sure you want to delete'),
            actions: [
              TextButton(
                  onPressed: () {
                    deleteStudent(index);
                    Navigator.of(context).pop(ctx);
                  },
                  child: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                onPressed: () => Navigator.of(context).pop(ctx),
                child: const Text('Cancel',
                style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )));
}
