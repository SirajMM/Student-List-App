part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState.initial() = Initial;
  const factory StudentState.viewAllStudents(List<StudentModel> students) = ViewAllStudents;
  const factory StudentState.viewStudentData(StudentModel student) = ViewStudentData;
  // const factory StudentState.addImage(String imagePath) = AddImage;
}
