// ignore_for_file: depend_on_referenced_packages
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_samle/db/model/boxe.dart';
import '../../db/model/data_model.dart';
part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(const StudentState.initial()) {
    on<ViewAllStudentsEvent>((event, emit) {
      try {
        final studentDetails = StudentBox.getStudentData();
        List<StudentModel> students = studentDetails.values.toList();
        emit(StudentState.viewAllStudents(students));
      } catch (e) {
        log(e.toString());
      }
    });

    on<AddStudent>((event, emit) {
      try {
        final studentDetails = StudentBox.getStudentData();
        studentDetails.add(event.newStudent);
        add(const ViewAllStudentsEvent());
      } catch (e) {
        log(e.toString());
      }
    });
    on<UpdateData>((event, emit) {
      try {
        final studentDetails = StudentBox.getStudentData();
        studentDetails.putAt(event.index, event.studentdetails);
        add(const ViewAllStudentsEvent());
      } catch (e) {
        log(e.toString());
      }
    });
    on<DeleteStudent>((event, emit) {
      try {
        final studentList = StudentBox.getStudentData();
        studentList.deleteAt(event.index);
        add(const ViewAllStudentsEvent());
      } catch (e) {
        log(e.toString());
      }
    });
  }
}
