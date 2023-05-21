// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../db/model/boxe.dart';
import '../../db/model/data_model.dart';
part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.initial()) {
    on<SearchStudent>((event, emit) {
      final studentBox = StudentBox.getStudentData();
      List<StudentModel> studentList = studentBox.values.toList();
      late List<StudentModel> studentDisplay =
          List<StudentModel>.from(studentList);
      studentDisplay = studentList
          .where((element) =>
              element.name.toLowerCase().contains(event.query.toLowerCase()))
          .toList();
      return emit(SearchState.serachList(studentDisplay));
    });
    on<Initialevent>((event, emit) {
      return emit(const SearchState.initial());
    });
  }
}
