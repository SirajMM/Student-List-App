// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllStudentsEvent,
    required TResult Function(StudentModel newStudent) addStudent,
    required TResult Function() viewSpecificData,
    required TResult Function(int index, StudentModel studentdetails)
        updateData,
    required TResult Function(int index) deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllStudentsEvent,
    TResult? Function(StudentModel newStudent)? addStudent,
    TResult? Function()? viewSpecificData,
    TResult? Function(int index, StudentModel studentdetails)? updateData,
    TResult? Function(int index)? deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllStudentsEvent,
    TResult Function(StudentModel newStudent)? addStudent,
    TResult Function()? viewSpecificData,
    TResult Function(int index, StudentModel studentdetails)? updateData,
    TResult Function(int index)? deleteStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewAllStudentsEvent value) viewAllStudentsEvent,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ViewSpecificData value) viewSpecificData,
    required TResult Function(UpdateData value) updateData,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(ViewSpecificData value)? viewSpecificData,
    TResult? Function(UpdateData value)? updateData,
    TResult? Function(DeleteStudent value)? deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ViewSpecificData value)? viewSpecificData,
    TResult Function(UpdateData value)? updateData,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEventCopyWith<$Res> {
  factory $StudentEventCopyWith(
          StudentEvent value, $Res Function(StudentEvent) then) =
      _$StudentEventCopyWithImpl<$Res, StudentEvent>;
}

/// @nodoc
class _$StudentEventCopyWithImpl<$Res, $Val extends StudentEvent>
    implements $StudentEventCopyWith<$Res> {
  _$StudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewAllStudentsEventCopyWith<$Res> {
  factory _$$ViewAllStudentsEventCopyWith(_$ViewAllStudentsEvent value,
          $Res Function(_$ViewAllStudentsEvent) then) =
      __$$ViewAllStudentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewAllStudentsEventCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$ViewAllStudentsEvent>
    implements _$$ViewAllStudentsEventCopyWith<$Res> {
  __$$ViewAllStudentsEventCopyWithImpl(_$ViewAllStudentsEvent _value,
      $Res Function(_$ViewAllStudentsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewAllStudentsEvent implements ViewAllStudentsEvent {
  const _$ViewAllStudentsEvent();

  @override
  String toString() {
    return 'StudentEvent.viewAllStudentsEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewAllStudentsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllStudentsEvent,
    required TResult Function(StudentModel newStudent) addStudent,
    required TResult Function() viewSpecificData,
    required TResult Function(int index, StudentModel studentdetails)
        updateData,
    required TResult Function(int index) deleteStudent,
  }) {
    return viewAllStudentsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllStudentsEvent,
    TResult? Function(StudentModel newStudent)? addStudent,
    TResult? Function()? viewSpecificData,
    TResult? Function(int index, StudentModel studentdetails)? updateData,
    TResult? Function(int index)? deleteStudent,
  }) {
    return viewAllStudentsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllStudentsEvent,
    TResult Function(StudentModel newStudent)? addStudent,
    TResult Function()? viewSpecificData,
    TResult Function(int index, StudentModel studentdetails)? updateData,
    TResult Function(int index)? deleteStudent,
    required TResult orElse(),
  }) {
    if (viewAllStudentsEvent != null) {
      return viewAllStudentsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewAllStudentsEvent value) viewAllStudentsEvent,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ViewSpecificData value) viewSpecificData,
    required TResult Function(UpdateData value) updateData,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return viewAllStudentsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(ViewSpecificData value)? viewSpecificData,
    TResult? Function(UpdateData value)? updateData,
    TResult? Function(DeleteStudent value)? deleteStudent,
  }) {
    return viewAllStudentsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ViewSpecificData value)? viewSpecificData,
    TResult Function(UpdateData value)? updateData,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (viewAllStudentsEvent != null) {
      return viewAllStudentsEvent(this);
    }
    return orElse();
  }
}

abstract class ViewAllStudentsEvent implements StudentEvent {
  const factory ViewAllStudentsEvent() = _$ViewAllStudentsEvent;
}

/// @nodoc
abstract class _$$AddStudentCopyWith<$Res> {
  factory _$$AddStudentCopyWith(
          _$AddStudent value, $Res Function(_$AddStudent) then) =
      __$$AddStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel newStudent});
}

/// @nodoc
class __$$AddStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$AddStudent>
    implements _$$AddStudentCopyWith<$Res> {
  __$$AddStudentCopyWithImpl(
      _$AddStudent _value, $Res Function(_$AddStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newStudent = null,
  }) {
    return _then(_$AddStudent(
      null == newStudent
          ? _value.newStudent
          : newStudent // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$AddStudent implements AddStudent {
  const _$AddStudent(this.newStudent);

  @override
  final StudentModel newStudent;

  @override
  String toString() {
    return 'StudentEvent.addStudent(newStudent: $newStudent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudent &&
            (identical(other.newStudent, newStudent) ||
                other.newStudent == newStudent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStudent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      __$$AddStudentCopyWithImpl<_$AddStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllStudentsEvent,
    required TResult Function(StudentModel newStudent) addStudent,
    required TResult Function() viewSpecificData,
    required TResult Function(int index, StudentModel studentdetails)
        updateData,
    required TResult Function(int index) deleteStudent,
  }) {
    return addStudent(newStudent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllStudentsEvent,
    TResult? Function(StudentModel newStudent)? addStudent,
    TResult? Function()? viewSpecificData,
    TResult? Function(int index, StudentModel studentdetails)? updateData,
    TResult? Function(int index)? deleteStudent,
  }) {
    return addStudent?.call(newStudent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllStudentsEvent,
    TResult Function(StudentModel newStudent)? addStudent,
    TResult Function()? viewSpecificData,
    TResult Function(int index, StudentModel studentdetails)? updateData,
    TResult Function(int index)? deleteStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(newStudent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewAllStudentsEvent value) viewAllStudentsEvent,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ViewSpecificData value) viewSpecificData,
    required TResult Function(UpdateData value) updateData,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(ViewSpecificData value)? viewSpecificData,
    TResult? Function(UpdateData value)? updateData,
    TResult? Function(DeleteStudent value)? deleteStudent,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ViewSpecificData value)? viewSpecificData,
    TResult Function(UpdateData value)? updateData,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class AddStudent implements StudentEvent {
  const factory AddStudent(final StudentModel newStudent) = _$AddStudent;

  StudentModel get newStudent;
  @JsonKey(ignore: true)
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewSpecificDataCopyWith<$Res> {
  factory _$$ViewSpecificDataCopyWith(
          _$ViewSpecificData value, $Res Function(_$ViewSpecificData) then) =
      __$$ViewSpecificDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewSpecificDataCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$ViewSpecificData>
    implements _$$ViewSpecificDataCopyWith<$Res> {
  __$$ViewSpecificDataCopyWithImpl(
      _$ViewSpecificData _value, $Res Function(_$ViewSpecificData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewSpecificData implements ViewSpecificData {
  const _$ViewSpecificData();

  @override
  String toString() {
    return 'StudentEvent.viewSpecificData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewSpecificData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllStudentsEvent,
    required TResult Function(StudentModel newStudent) addStudent,
    required TResult Function() viewSpecificData,
    required TResult Function(int index, StudentModel studentdetails)
        updateData,
    required TResult Function(int index) deleteStudent,
  }) {
    return viewSpecificData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllStudentsEvent,
    TResult? Function(StudentModel newStudent)? addStudent,
    TResult? Function()? viewSpecificData,
    TResult? Function(int index, StudentModel studentdetails)? updateData,
    TResult? Function(int index)? deleteStudent,
  }) {
    return viewSpecificData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllStudentsEvent,
    TResult Function(StudentModel newStudent)? addStudent,
    TResult Function()? viewSpecificData,
    TResult Function(int index, StudentModel studentdetails)? updateData,
    TResult Function(int index)? deleteStudent,
    required TResult orElse(),
  }) {
    if (viewSpecificData != null) {
      return viewSpecificData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewAllStudentsEvent value) viewAllStudentsEvent,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ViewSpecificData value) viewSpecificData,
    required TResult Function(UpdateData value) updateData,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return viewSpecificData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(ViewSpecificData value)? viewSpecificData,
    TResult? Function(UpdateData value)? updateData,
    TResult? Function(DeleteStudent value)? deleteStudent,
  }) {
    return viewSpecificData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ViewSpecificData value)? viewSpecificData,
    TResult Function(UpdateData value)? updateData,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (viewSpecificData != null) {
      return viewSpecificData(this);
    }
    return orElse();
  }
}

abstract class ViewSpecificData implements StudentEvent {
  const factory ViewSpecificData() = _$ViewSpecificData;
}

/// @nodoc
abstract class _$$UpdateDataCopyWith<$Res> {
  factory _$$UpdateDataCopyWith(
          _$UpdateData value, $Res Function(_$UpdateData) then) =
      __$$UpdateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, StudentModel studentdetails});
}

/// @nodoc
class __$$UpdateDataCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$UpdateData>
    implements _$$UpdateDataCopyWith<$Res> {
  __$$UpdateDataCopyWithImpl(
      _$UpdateData _value, $Res Function(_$UpdateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? studentdetails = null,
  }) {
    return _then(_$UpdateData(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == studentdetails
          ? _value.studentdetails
          : studentdetails // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$UpdateData implements UpdateData {
  const _$UpdateData(this.index, this.studentdetails);

  @override
  final int index;
  @override
  final StudentModel studentdetails;

  @override
  String toString() {
    return 'StudentEvent.updateData(index: $index, studentdetails: $studentdetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateData &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.studentdetails, studentdetails) ||
                other.studentdetails == studentdetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, studentdetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDataCopyWith<_$UpdateData> get copyWith =>
      __$$UpdateDataCopyWithImpl<_$UpdateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllStudentsEvent,
    required TResult Function(StudentModel newStudent) addStudent,
    required TResult Function() viewSpecificData,
    required TResult Function(int index, StudentModel studentdetails)
        updateData,
    required TResult Function(int index) deleteStudent,
  }) {
    return updateData(index, studentdetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllStudentsEvent,
    TResult? Function(StudentModel newStudent)? addStudent,
    TResult? Function()? viewSpecificData,
    TResult? Function(int index, StudentModel studentdetails)? updateData,
    TResult? Function(int index)? deleteStudent,
  }) {
    return updateData?.call(index, studentdetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllStudentsEvent,
    TResult Function(StudentModel newStudent)? addStudent,
    TResult Function()? viewSpecificData,
    TResult Function(int index, StudentModel studentdetails)? updateData,
    TResult Function(int index)? deleteStudent,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(index, studentdetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewAllStudentsEvent value) viewAllStudentsEvent,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ViewSpecificData value) viewSpecificData,
    required TResult Function(UpdateData value) updateData,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(ViewSpecificData value)? viewSpecificData,
    TResult? Function(UpdateData value)? updateData,
    TResult? Function(DeleteStudent value)? deleteStudent,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ViewSpecificData value)? viewSpecificData,
    TResult Function(UpdateData value)? updateData,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class UpdateData implements StudentEvent {
  const factory UpdateData(final int index, final StudentModel studentdetails) =
      _$UpdateData;

  int get index;
  StudentModel get studentdetails;
  @JsonKey(ignore: true)
  _$$UpdateDataCopyWith<_$UpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStudentCopyWith<$Res> {
  factory _$$DeleteStudentCopyWith(
          _$DeleteStudent value, $Res Function(_$DeleteStudent) then) =
      __$$DeleteStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$DeleteStudent>
    implements _$$DeleteStudentCopyWith<$Res> {
  __$$DeleteStudentCopyWithImpl(
      _$DeleteStudent _value, $Res Function(_$DeleteStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteStudent(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteStudent implements DeleteStudent {
  const _$DeleteStudent(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'StudentEvent.deleteStudent(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStudent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      __$$DeleteStudentCopyWithImpl<_$DeleteStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllStudentsEvent,
    required TResult Function(StudentModel newStudent) addStudent,
    required TResult Function() viewSpecificData,
    required TResult Function(int index, StudentModel studentdetails)
        updateData,
    required TResult Function(int index) deleteStudent,
  }) {
    return deleteStudent(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllStudentsEvent,
    TResult? Function(StudentModel newStudent)? addStudent,
    TResult? Function()? viewSpecificData,
    TResult? Function(int index, StudentModel studentdetails)? updateData,
    TResult? Function(int index)? deleteStudent,
  }) {
    return deleteStudent?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllStudentsEvent,
    TResult Function(StudentModel newStudent)? addStudent,
    TResult Function()? viewSpecificData,
    TResult Function(int index, StudentModel studentdetails)? updateData,
    TResult Function(int index)? deleteStudent,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewAllStudentsEvent value) viewAllStudentsEvent,
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(ViewSpecificData value) viewSpecificData,
    required TResult Function(UpdateData value) updateData,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return deleteStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult? Function(AddStudent value)? addStudent,
    TResult? Function(ViewSpecificData value)? viewSpecificData,
    TResult? Function(UpdateData value)? updateData,
    TResult? Function(DeleteStudent value)? deleteStudent,
  }) {
    return deleteStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewAllStudentsEvent value)? viewAllStudentsEvent,
    TResult Function(AddStudent value)? addStudent,
    TResult Function(ViewSpecificData value)? viewSpecificData,
    TResult Function(UpdateData value)? updateData,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(this);
    }
    return orElse();
  }
}

abstract class DeleteStudent implements StudentEvent {
  const factory DeleteStudent(final int index) = _$DeleteStudent;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> students) viewAllStudents,
    required TResult Function(StudentModel student) viewStudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> students)? viewAllStudents,
    TResult? Function(StudentModel student)? viewStudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> students)? viewAllStudents,
    TResult Function(StudentModel student)? viewStudentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ViewAllStudents value) viewAllStudents,
    required TResult Function(ViewStudentData value) viewStudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ViewAllStudents value)? viewAllStudents,
    TResult? Function(ViewStudentData value)? viewStudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ViewAllStudents value)? viewAllStudents,
    TResult Function(ViewStudentData value)? viewStudentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res, StudentState>;
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res, $Val extends StudentState>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

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
    extends _$StudentStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'StudentState.initial()';
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
    required TResult Function(List<StudentModel> students) viewAllStudents,
    required TResult Function(StudentModel student) viewStudentData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> students)? viewAllStudents,
    TResult? Function(StudentModel student)? viewStudentData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> students)? viewAllStudents,
    TResult Function(StudentModel student)? viewStudentData,
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
    required TResult Function(ViewAllStudents value) viewAllStudents,
    required TResult Function(ViewStudentData value) viewStudentData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ViewAllStudents value)? viewAllStudents,
    TResult? Function(ViewStudentData value)? viewStudentData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ViewAllStudents value)? viewAllStudents,
    TResult Function(ViewStudentData value)? viewStudentData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StudentState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$ViewAllStudentsCopyWith<$Res> {
  factory _$$ViewAllStudentsCopyWith(
          _$ViewAllStudents value, $Res Function(_$ViewAllStudents) then) =
      __$$ViewAllStudentsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StudentModel> students});
}

/// @nodoc
class __$$ViewAllStudentsCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$ViewAllStudents>
    implements _$$ViewAllStudentsCopyWith<$Res> {
  __$$ViewAllStudentsCopyWithImpl(
      _$ViewAllStudents _value, $Res Function(_$ViewAllStudents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_$ViewAllStudents(
      null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ));
  }
}

/// @nodoc

class _$ViewAllStudents implements ViewAllStudents {
  const _$ViewAllStudents(final List<StudentModel> students)
      : _students = students;

  final List<StudentModel> _students;
  @override
  List<StudentModel> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'StudentState.viewAllStudents(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewAllStudents &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewAllStudentsCopyWith<_$ViewAllStudents> get copyWith =>
      __$$ViewAllStudentsCopyWithImpl<_$ViewAllStudents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> students) viewAllStudents,
    required TResult Function(StudentModel student) viewStudentData,
  }) {
    return viewAllStudents(students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> students)? viewAllStudents,
    TResult? Function(StudentModel student)? viewStudentData,
  }) {
    return viewAllStudents?.call(students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> students)? viewAllStudents,
    TResult Function(StudentModel student)? viewStudentData,
    required TResult orElse(),
  }) {
    if (viewAllStudents != null) {
      return viewAllStudents(students);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ViewAllStudents value) viewAllStudents,
    required TResult Function(ViewStudentData value) viewStudentData,
  }) {
    return viewAllStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ViewAllStudents value)? viewAllStudents,
    TResult? Function(ViewStudentData value)? viewStudentData,
  }) {
    return viewAllStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ViewAllStudents value)? viewAllStudents,
    TResult Function(ViewStudentData value)? viewStudentData,
    required TResult orElse(),
  }) {
    if (viewAllStudents != null) {
      return viewAllStudents(this);
    }
    return orElse();
  }
}

abstract class ViewAllStudents implements StudentState {
  const factory ViewAllStudents(final List<StudentModel> students) =
      _$ViewAllStudents;

  List<StudentModel> get students;
  @JsonKey(ignore: true)
  _$$ViewAllStudentsCopyWith<_$ViewAllStudents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewStudentDataCopyWith<$Res> {
  factory _$$ViewStudentDataCopyWith(
          _$ViewStudentData value, $Res Function(_$ViewStudentData) then) =
      __$$ViewStudentDataCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel student});
}

/// @nodoc
class __$$ViewStudentDataCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$ViewStudentData>
    implements _$$ViewStudentDataCopyWith<$Res> {
  __$$ViewStudentDataCopyWithImpl(
      _$ViewStudentData _value, $Res Function(_$ViewStudentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$ViewStudentData(
      null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$ViewStudentData implements ViewStudentData {
  const _$ViewStudentData(this.student);

  @override
  final StudentModel student;

  @override
  String toString() {
    return 'StudentState.viewStudentData(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStudentData &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStudentDataCopyWith<_$ViewStudentData> get copyWith =>
      __$$ViewStudentDataCopyWithImpl<_$ViewStudentData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> students) viewAllStudents,
    required TResult Function(StudentModel student) viewStudentData,
  }) {
    return viewStudentData(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> students)? viewAllStudents,
    TResult? Function(StudentModel student)? viewStudentData,
  }) {
    return viewStudentData?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> students)? viewAllStudents,
    TResult Function(StudentModel student)? viewStudentData,
    required TResult orElse(),
  }) {
    if (viewStudentData != null) {
      return viewStudentData(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ViewAllStudents value) viewAllStudents,
    required TResult Function(ViewStudentData value) viewStudentData,
  }) {
    return viewStudentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ViewAllStudents value)? viewAllStudents,
    TResult? Function(ViewStudentData value)? viewStudentData,
  }) {
    return viewStudentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ViewAllStudents value)? viewAllStudents,
    TResult Function(ViewStudentData value)? viewStudentData,
    required TResult orElse(),
  }) {
    if (viewStudentData != null) {
      return viewStudentData(this);
    }
    return orElse();
  }
}

abstract class ViewStudentData implements StudentState {
  const factory ViewStudentData(final StudentModel student) = _$ViewStudentData;

  StudentModel get student;
  @JsonKey(ignore: true)
  _$$ViewStudentDataCopyWith<_$ViewStudentData> get copyWith =>
      throw _privateConstructorUsedError;
}
