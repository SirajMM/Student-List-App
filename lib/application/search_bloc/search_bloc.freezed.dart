// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(String query) searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function(String query)? searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String query)? searchStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialevent value) initialEvent,
    required TResult Function(SearchStudent value) searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialevent value)? initialEvent,
    TResult? Function(SearchStudent value)? searchStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialevent value)? initialEvent,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialeventCopyWith<$Res> {
  factory _$$InitialeventCopyWith(
          _$Initialevent value, $Res Function(_$Initialevent) then) =
      __$$InitialeventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialeventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$Initialevent>
    implements _$$InitialeventCopyWith<$Res> {
  __$$InitialeventCopyWithImpl(
      _$Initialevent _value, $Res Function(_$Initialevent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialevent implements Initialevent {
  const _$Initialevent();

  @override
  String toString() {
    return 'SearchEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialevent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(String query) searchStudent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function(String query)? searchStudent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String query)? searchStudent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialevent value) initialEvent,
    required TResult Function(SearchStudent value) searchStudent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialevent value)? initialEvent,
    TResult? Function(SearchStudent value)? searchStudent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialevent value)? initialEvent,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class Initialevent implements SearchEvent {
  const factory Initialevent() = _$Initialevent;
}

/// @nodoc
abstract class _$$SearchStudentCopyWith<$Res> {
  factory _$$SearchStudentCopyWith(
          _$SearchStudent value, $Res Function(_$SearchStudent) then) =
      __$$SearchStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchStudentCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchStudent>
    implements _$$SearchStudentCopyWith<$Res> {
  __$$SearchStudentCopyWithImpl(
      _$SearchStudent _value, $Res Function(_$SearchStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchStudent(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStudent implements SearchStudent {
  const _$SearchStudent(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.searchStudent(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStudent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      __$$SearchStudentCopyWithImpl<_$SearchStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(String query) searchStudent,
  }) {
    return searchStudent(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function(String query)? searchStudent,
  }) {
    return searchStudent?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String query)? searchStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialevent value) initialEvent,
    required TResult Function(SearchStudent value) searchStudent,
  }) {
    return searchStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialevent value)? initialEvent,
    TResult? Function(SearchStudent value)? searchStudent,
  }) {
    return searchStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialevent value)? initialEvent,
    TResult Function(SearchStudent value)? searchStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(this);
    }
    return orElse();
  }
}

abstract class SearchStudent implements SearchEvent {
  const factory SearchStudent(final String query) = _$SearchStudent;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> searchItem) serachList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> searchItem)? serachList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> searchItem)? serachList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SerachList value) serachList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SerachList value)? serachList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SerachList value)? serachList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> searchItem) serachList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> searchItem)? serachList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> searchItem)? serachList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SerachList value) serachList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SerachList value)? serachList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SerachList value)? serachList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$SerachListCopyWith<$Res> {
  factory _$$SerachListCopyWith(
          _$SerachList value, $Res Function(_$SerachList) then) =
      __$$SerachListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StudentModel> searchItem});
}

/// @nodoc
class __$$SerachListCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SerachList>
    implements _$$SerachListCopyWith<$Res> {
  __$$SerachListCopyWithImpl(
      _$SerachList _value, $Res Function(_$SerachList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchItem = null,
  }) {
    return _then(_$SerachList(
      null == searchItem
          ? _value._searchItem
          : searchItem // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ));
  }
}

/// @nodoc

class _$SerachList implements SerachList {
  const _$SerachList(final List<StudentModel> searchItem)
      : _searchItem = searchItem;

  final List<StudentModel> _searchItem;
  @override
  List<StudentModel> get searchItem {
    if (_searchItem is EqualUnmodifiableListView) return _searchItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchItem);
  }

  @override
  String toString() {
    return 'SearchState.serachList(searchItem: $searchItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SerachList &&
            const DeepCollectionEquality()
                .equals(other._searchItem, _searchItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SerachListCopyWith<_$SerachList> get copyWith =>
      __$$SerachListCopyWithImpl<_$SerachList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> searchItem) serachList,
  }) {
    return serachList(searchItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> searchItem)? serachList,
  }) {
    return serachList?.call(searchItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> searchItem)? serachList,
    required TResult orElse(),
  }) {
    if (serachList != null) {
      return serachList(searchItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SerachList value) serachList,
  }) {
    return serachList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SerachList value)? serachList,
  }) {
    return serachList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SerachList value)? serachList,
    required TResult orElse(),
  }) {
    if (serachList != null) {
      return serachList(this);
    }
    return orElse();
  }
}

abstract class SerachList implements SearchState {
  const factory SerachList(final List<StudentModel> searchItem) = _$SerachList;

  List<StudentModel> get searchItem;
  @JsonKey(ignore: true)
  _$$SerachListCopyWith<_$SerachList> get copyWith =>
      throw _privateConstructorUsedError;
}
