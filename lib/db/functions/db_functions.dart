import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/data_model.dart';

ValueNotifier<List<StudentModel>>studentListNotifier=ValueNotifier([]);

Future<void> addStudent(StudentModel value) async{
 
 final studentDB = await Hive.openBox<StudentModel>('student_db');
 final _id= await studentDB.add(value);
 value.id=_id;
 
//  getAllStudents();
studentListNotifier.value.add(value);
studentListNotifier.notifyListeners();

  
}
Future<void>getAllStudents() async{
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}
Future<void>deleteStudent(int id)async{
final studentDB = await Hive.openBox<StudentModel>('student_db');
studentDB.deleteAt(id);
getAllStudents();
}
Future<void>updateNew(StudentModel value) async{
  final studentDB=await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();
  studentListNotifier.notifyListeners();
}