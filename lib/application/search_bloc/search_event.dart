part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialEvent() = Initialevent;
  const factory SearchEvent.searchStudent(String query) = SearchStudent;
}