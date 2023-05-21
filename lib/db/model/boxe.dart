import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_samle/db/model/data_model.dart';

class StudentBox {
  static Box<StudentModel> getStudentData() =>
      Hive.box<StudentModel>('students');
}
