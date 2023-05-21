part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  // const factory StudentEvent.started() = Started;
  const factory StudentEvent.viewAllStudentsEvent() = ViewAllStudentsEvent;
  const factory StudentEvent.addStudent(StudentModel newStudent) = AddStudent;
  const factory StudentEvent.viewSpecificData() = ViewSpecificData;
  const factory StudentEvent.updateData( int index,StudentModel studentdetails) = UpdateData;
  const factory StudentEvent.deleteStudent(int index) = DeleteStudent;
  // const factory StudentEvent.pickImage() = PickImage;
}