part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.serachList(List<StudentModel>searchItem) = SerachList;
}
