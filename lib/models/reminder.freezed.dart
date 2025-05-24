// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Reminder _$ReminderFromJson(Map<String, dynamic> json) {
  return _Reminder.fromJson(json);
}

/// @nodoc
mixin _$Reminder {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  bool get isNotificationEnabled => throw _privateConstructorUsedError;
  ReminderPriority get priority => throw _privateConstructorUsedError;
  ReminderCategory get category => throw _privateConstructorUsedError;
  List<String> get voiceMessages => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Reminder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReminderCopyWith<Reminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderCopyWith<$Res> {
  factory $ReminderCopyWith(Reminder value, $Res Function(Reminder) then) =
      _$ReminderCopyWithImpl<$Res, Reminder>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime dateTime,
      bool isCompleted,
      bool isNotificationEnabled,
      ReminderPriority priority,
      ReminderCategory category,
      List<String> voiceMessages,
      DateTime? completedAt,
      DateTime? createdAt,
      DateTime? updatedAt});

  $ReminderPriorityCopyWith<$Res> get priority;
  $ReminderCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$ReminderCopyWithImpl<$Res, $Val extends Reminder>
    implements $ReminderCopyWith<$Res> {
  _$ReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dateTime = null,
    Object? isCompleted = null,
    Object? isNotificationEnabled = null,
    Object? priority = null,
    Object? category = null,
    Object? voiceMessages = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationEnabled: null == isNotificationEnabled
          ? _value.isNotificationEnabled
          : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as ReminderPriority,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ReminderCategory,
      voiceMessages: null == voiceMessages
          ? _value.voiceMessages
          : voiceMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of Reminder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderPriorityCopyWith<$Res> get priority {
    return $ReminderPriorityCopyWith<$Res>(_value.priority, (value) {
      return _then(_value.copyWith(priority: value) as $Val);
    });
  }

  /// Create a copy of Reminder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReminderCategoryCopyWith<$Res> get category {
    return $ReminderCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReminderImplCopyWith<$Res>
    implements $ReminderCopyWith<$Res> {
  factory _$$ReminderImplCopyWith(
          _$ReminderImpl value, $Res Function(_$ReminderImpl) then) =
      __$$ReminderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime dateTime,
      bool isCompleted,
      bool isNotificationEnabled,
      ReminderPriority priority,
      ReminderCategory category,
      List<String> voiceMessages,
      DateTime? completedAt,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $ReminderPriorityCopyWith<$Res> get priority;
  @override
  $ReminderCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$ReminderImplCopyWithImpl<$Res>
    extends _$ReminderCopyWithImpl<$Res, _$ReminderImpl>
    implements _$$ReminderImplCopyWith<$Res> {
  __$$ReminderImplCopyWithImpl(
      _$ReminderImpl _value, $Res Function(_$ReminderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reminder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dateTime = null,
    Object? isCompleted = null,
    Object? isNotificationEnabled = null,
    Object? priority = null,
    Object? category = null,
    Object? voiceMessages = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReminderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationEnabled: null == isNotificationEnabled
          ? _value.isNotificationEnabled
          : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as ReminderPriority,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ReminderCategory,
      voiceMessages: null == voiceMessages
          ? _value._voiceMessages
          : voiceMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReminderImpl implements _Reminder {
  const _$ReminderImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.dateTime,
      required this.isCompleted,
      required this.isNotificationEnabled,
      required this.priority,
      required this.category,
      final List<String> voiceMessages = const [],
      this.completedAt,
      this.createdAt,
      this.updatedAt})
      : _voiceMessages = voiceMessages;

  factory _$ReminderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReminderImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime dateTime;
  @override
  final bool isCompleted;
  @override
  final bool isNotificationEnabled;
  @override
  final ReminderPriority priority;
  @override
  final ReminderCategory category;
  final List<String> _voiceMessages;
  @override
  @JsonKey()
  List<String> get voiceMessages {
    if (_voiceMessages is EqualUnmodifiableListView) return _voiceMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voiceMessages);
  }

  @override
  final DateTime? completedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Reminder(id: $id, title: $title, description: $description, dateTime: $dateTime, isCompleted: $isCompleted, isNotificationEnabled: $isNotificationEnabled, priority: $priority, category: $category, voiceMessages: $voiceMessages, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isNotificationEnabled, isNotificationEnabled) ||
                other.isNotificationEnabled == isNotificationEnabled) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._voiceMessages, _voiceMessages) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      dateTime,
      isCompleted,
      isNotificationEnabled,
      priority,
      category,
      const DeepCollectionEquality().hash(_voiceMessages),
      completedAt,
      createdAt,
      updatedAt);

  /// Create a copy of Reminder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderImplCopyWith<_$ReminderImpl> get copyWith =>
      __$$ReminderImplCopyWithImpl<_$ReminderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReminderImplToJson(
      this,
    );
  }
}

abstract class _Reminder implements Reminder {
  const factory _Reminder(
      {required final int id,
      required final String title,
      required final String description,
      required final DateTime dateTime,
      required final bool isCompleted,
      required final bool isNotificationEnabled,
      required final ReminderPriority priority,
      required final ReminderCategory category,
      final List<String> voiceMessages,
      final DateTime? completedAt,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$ReminderImpl;

  factory _Reminder.fromJson(Map<String, dynamic> json) =
      _$ReminderImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get dateTime;
  @override
  bool get isCompleted;
  @override
  bool get isNotificationEnabled;
  @override
  ReminderPriority get priority;
  @override
  ReminderCategory get category;
  @override
  List<String> get voiceMessages;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Reminder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderImplCopyWith<_$ReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReminderPriority {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() low,
    required TResult Function() medium,
    required TResult Function() high,
    required TResult Function() urgent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? low,
    TResult? Function()? medium,
    TResult? Function()? high,
    TResult? Function()? urgent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? low,
    TResult Function()? medium,
    TResult Function()? high,
    TResult Function()? urgent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Low value) low,
    required TResult Function(_Medium value) medium,
    required TResult Function(_High value) high,
    required TResult Function(_Urgent value) urgent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Low value)? low,
    TResult? Function(_Medium value)? medium,
    TResult? Function(_High value)? high,
    TResult? Function(_Urgent value)? urgent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Low value)? low,
    TResult Function(_Medium value)? medium,
    TResult Function(_High value)? high,
    TResult Function(_Urgent value)? urgent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderPriorityCopyWith<$Res> {
  factory $ReminderPriorityCopyWith(
          ReminderPriority value, $Res Function(ReminderPriority) then) =
      _$ReminderPriorityCopyWithImpl<$Res, ReminderPriority>;
}

/// @nodoc
class _$ReminderPriorityCopyWithImpl<$Res, $Val extends ReminderPriority>
    implements $ReminderPriorityCopyWith<$Res> {
  _$ReminderPriorityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderPriority
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LowImplCopyWith<$Res> {
  factory _$$LowImplCopyWith(_$LowImpl value, $Res Function(_$LowImpl) then) =
      __$$LowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LowImplCopyWithImpl<$Res>
    extends _$ReminderPriorityCopyWithImpl<$Res, _$LowImpl>
    implements _$$LowImplCopyWith<$Res> {
  __$$LowImplCopyWithImpl(_$LowImpl _value, $Res Function(_$LowImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderPriority
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LowImpl implements _Low {
  const _$LowImpl();

  @override
  String toString() {
    return 'ReminderPriority.low()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LowImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() low,
    required TResult Function() medium,
    required TResult Function() high,
    required TResult Function() urgent,
  }) {
    return low();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? low,
    TResult? Function()? medium,
    TResult? Function()? high,
    TResult? Function()? urgent,
  }) {
    return low?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? low,
    TResult Function()? medium,
    TResult Function()? high,
    TResult Function()? urgent,
    required TResult orElse(),
  }) {
    if (low != null) {
      return low();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Low value) low,
    required TResult Function(_Medium value) medium,
    required TResult Function(_High value) high,
    required TResult Function(_Urgent value) urgent,
  }) {
    return low(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Low value)? low,
    TResult? Function(_Medium value)? medium,
    TResult? Function(_High value)? high,
    TResult? Function(_Urgent value)? urgent,
  }) {
    return low?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Low value)? low,
    TResult Function(_Medium value)? medium,
    TResult Function(_High value)? high,
    TResult Function(_Urgent value)? urgent,
    required TResult orElse(),
  }) {
    if (low != null) {
      return low(this);
    }
    return orElse();
  }
}

abstract class _Low implements ReminderPriority {
  const factory _Low() = _$LowImpl;
}

/// @nodoc
abstract class _$$MediumImplCopyWith<$Res> {
  factory _$$MediumImplCopyWith(
          _$MediumImpl value, $Res Function(_$MediumImpl) then) =
      __$$MediumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MediumImplCopyWithImpl<$Res>
    extends _$ReminderPriorityCopyWithImpl<$Res, _$MediumImpl>
    implements _$$MediumImplCopyWith<$Res> {
  __$$MediumImplCopyWithImpl(
      _$MediumImpl _value, $Res Function(_$MediumImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderPriority
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MediumImpl implements _Medium {
  const _$MediumImpl();

  @override
  String toString() {
    return 'ReminderPriority.medium()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MediumImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() low,
    required TResult Function() medium,
    required TResult Function() high,
    required TResult Function() urgent,
  }) {
    return medium();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? low,
    TResult? Function()? medium,
    TResult? Function()? high,
    TResult? Function()? urgent,
  }) {
    return medium?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? low,
    TResult Function()? medium,
    TResult Function()? high,
    TResult Function()? urgent,
    required TResult orElse(),
  }) {
    if (medium != null) {
      return medium();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Low value) low,
    required TResult Function(_Medium value) medium,
    required TResult Function(_High value) high,
    required TResult Function(_Urgent value) urgent,
  }) {
    return medium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Low value)? low,
    TResult? Function(_Medium value)? medium,
    TResult? Function(_High value)? high,
    TResult? Function(_Urgent value)? urgent,
  }) {
    return medium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Low value)? low,
    TResult Function(_Medium value)? medium,
    TResult Function(_High value)? high,
    TResult Function(_Urgent value)? urgent,
    required TResult orElse(),
  }) {
    if (medium != null) {
      return medium(this);
    }
    return orElse();
  }
}

abstract class _Medium implements ReminderPriority {
  const factory _Medium() = _$MediumImpl;
}

/// @nodoc
abstract class _$$HighImplCopyWith<$Res> {
  factory _$$HighImplCopyWith(
          _$HighImpl value, $Res Function(_$HighImpl) then) =
      __$$HighImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HighImplCopyWithImpl<$Res>
    extends _$ReminderPriorityCopyWithImpl<$Res, _$HighImpl>
    implements _$$HighImplCopyWith<$Res> {
  __$$HighImplCopyWithImpl(_$HighImpl _value, $Res Function(_$HighImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderPriority
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HighImpl implements _High {
  const _$HighImpl();

  @override
  String toString() {
    return 'ReminderPriority.high()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HighImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() low,
    required TResult Function() medium,
    required TResult Function() high,
    required TResult Function() urgent,
  }) {
    return high();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? low,
    TResult? Function()? medium,
    TResult? Function()? high,
    TResult? Function()? urgent,
  }) {
    return high?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? low,
    TResult Function()? medium,
    TResult Function()? high,
    TResult Function()? urgent,
    required TResult orElse(),
  }) {
    if (high != null) {
      return high();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Low value) low,
    required TResult Function(_Medium value) medium,
    required TResult Function(_High value) high,
    required TResult Function(_Urgent value) urgent,
  }) {
    return high(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Low value)? low,
    TResult? Function(_Medium value)? medium,
    TResult? Function(_High value)? high,
    TResult? Function(_Urgent value)? urgent,
  }) {
    return high?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Low value)? low,
    TResult Function(_Medium value)? medium,
    TResult Function(_High value)? high,
    TResult Function(_Urgent value)? urgent,
    required TResult orElse(),
  }) {
    if (high != null) {
      return high(this);
    }
    return orElse();
  }
}

abstract class _High implements ReminderPriority {
  const factory _High() = _$HighImpl;
}

/// @nodoc
abstract class _$$UrgentImplCopyWith<$Res> {
  factory _$$UrgentImplCopyWith(
          _$UrgentImpl value, $Res Function(_$UrgentImpl) then) =
      __$$UrgentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UrgentImplCopyWithImpl<$Res>
    extends _$ReminderPriorityCopyWithImpl<$Res, _$UrgentImpl>
    implements _$$UrgentImplCopyWith<$Res> {
  __$$UrgentImplCopyWithImpl(
      _$UrgentImpl _value, $Res Function(_$UrgentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderPriority
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UrgentImpl implements _Urgent {
  const _$UrgentImpl();

  @override
  String toString() {
    return 'ReminderPriority.urgent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UrgentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() low,
    required TResult Function() medium,
    required TResult Function() high,
    required TResult Function() urgent,
  }) {
    return urgent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? low,
    TResult? Function()? medium,
    TResult? Function()? high,
    TResult? Function()? urgent,
  }) {
    return urgent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? low,
    TResult Function()? medium,
    TResult Function()? high,
    TResult Function()? urgent,
    required TResult orElse(),
  }) {
    if (urgent != null) {
      return urgent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Low value) low,
    required TResult Function(_Medium value) medium,
    required TResult Function(_High value) high,
    required TResult Function(_Urgent value) urgent,
  }) {
    return urgent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Low value)? low,
    TResult? Function(_Medium value)? medium,
    TResult? Function(_High value)? high,
    TResult? Function(_Urgent value)? urgent,
  }) {
    return urgent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Low value)? low,
    TResult Function(_Medium value)? medium,
    TResult Function(_High value)? high,
    TResult Function(_Urgent value)? urgent,
    required TResult orElse(),
  }) {
    if (urgent != null) {
      return urgent(this);
    }
    return orElse();
  }
}

abstract class _Urgent implements ReminderPriority {
  const factory _Urgent() = _$UrgentImpl;
}

/// @nodoc
mixin _$ReminderCategory {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() personal,
    required TResult Function() health,
    required TResult Function() study,
    required TResult Function() shopping,
    required TResult Function(String customName) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? work,
    TResult? Function()? personal,
    TResult? Function()? health,
    TResult? Function()? study,
    TResult? Function()? shopping,
    TResult? Function(String customName)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? personal,
    TResult Function()? health,
    TResult Function()? study,
    TResult Function()? shopping,
    TResult Function(String customName)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Health value) health,
    required TResult Function(_Study value) study,
    required TResult Function(_Shopping value) shopping,
    required TResult Function(_Other value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Work value)? work,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Health value)? health,
    TResult? Function(_Study value)? study,
    TResult? Function(_Shopping value)? shopping,
    TResult? Function(_Other value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_Personal value)? personal,
    TResult Function(_Health value)? health,
    TResult Function(_Study value)? study,
    TResult Function(_Shopping value)? shopping,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderCategoryCopyWith<$Res> {
  factory $ReminderCategoryCopyWith(
          ReminderCategory value, $Res Function(ReminderCategory) then) =
      _$ReminderCategoryCopyWithImpl<$Res, ReminderCategory>;
}

/// @nodoc
class _$ReminderCategoryCopyWithImpl<$Res, $Val extends ReminderCategory>
    implements $ReminderCategoryCopyWith<$Res> {
  _$ReminderCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WorkImplCopyWith<$Res> {
  factory _$$WorkImplCopyWith(
          _$WorkImpl value, $Res Function(_$WorkImpl) then) =
      __$$WorkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkImplCopyWithImpl<$Res>
    extends _$ReminderCategoryCopyWithImpl<$Res, _$WorkImpl>
    implements _$$WorkImplCopyWith<$Res> {
  __$$WorkImplCopyWithImpl(_$WorkImpl _value, $Res Function(_$WorkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WorkImpl implements _Work {
  const _$WorkImpl();

  @override
  String toString() {
    return 'ReminderCategory.work()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() personal,
    required TResult Function() health,
    required TResult Function() study,
    required TResult Function() shopping,
    required TResult Function(String customName) other,
  }) {
    return work();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? work,
    TResult? Function()? personal,
    TResult? Function()? health,
    TResult? Function()? study,
    TResult? Function()? shopping,
    TResult? Function(String customName)? other,
  }) {
    return work?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? personal,
    TResult Function()? health,
    TResult Function()? study,
    TResult Function()? shopping,
    TResult Function(String customName)? other,
    required TResult orElse(),
  }) {
    if (work != null) {
      return work();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Health value) health,
    required TResult Function(_Study value) study,
    required TResult Function(_Shopping value) shopping,
    required TResult Function(_Other value) other,
  }) {
    return work(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Work value)? work,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Health value)? health,
    TResult? Function(_Study value)? study,
    TResult? Function(_Shopping value)? shopping,
    TResult? Function(_Other value)? other,
  }) {
    return work?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_Personal value)? personal,
    TResult Function(_Health value)? health,
    TResult Function(_Study value)? study,
    TResult Function(_Shopping value)? shopping,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (work != null) {
      return work(this);
    }
    return orElse();
  }
}

abstract class _Work implements ReminderCategory {
  const factory _Work() = _$WorkImpl;
}

/// @nodoc
abstract class _$$PersonalImplCopyWith<$Res> {
  factory _$$PersonalImplCopyWith(
          _$PersonalImpl value, $Res Function(_$PersonalImpl) then) =
      __$$PersonalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonalImplCopyWithImpl<$Res>
    extends _$ReminderCategoryCopyWithImpl<$Res, _$PersonalImpl>
    implements _$$PersonalImplCopyWith<$Res> {
  __$$PersonalImplCopyWithImpl(
      _$PersonalImpl _value, $Res Function(_$PersonalImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PersonalImpl implements _Personal {
  const _$PersonalImpl();

  @override
  String toString() {
    return 'ReminderCategory.personal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PersonalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() personal,
    required TResult Function() health,
    required TResult Function() study,
    required TResult Function() shopping,
    required TResult Function(String customName) other,
  }) {
    return personal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? work,
    TResult? Function()? personal,
    TResult? Function()? health,
    TResult? Function()? study,
    TResult? Function()? shopping,
    TResult? Function(String customName)? other,
  }) {
    return personal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? personal,
    TResult Function()? health,
    TResult Function()? study,
    TResult Function()? shopping,
    TResult Function(String customName)? other,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Health value) health,
    required TResult Function(_Study value) study,
    required TResult Function(_Shopping value) shopping,
    required TResult Function(_Other value) other,
  }) {
    return personal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Work value)? work,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Health value)? health,
    TResult? Function(_Study value)? study,
    TResult? Function(_Shopping value)? shopping,
    TResult? Function(_Other value)? other,
  }) {
    return personal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_Personal value)? personal,
    TResult Function(_Health value)? health,
    TResult Function(_Study value)? study,
    TResult Function(_Shopping value)? shopping,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(this);
    }
    return orElse();
  }
}

abstract class _Personal implements ReminderCategory {
  const factory _Personal() = _$PersonalImpl;
}

/// @nodoc
abstract class _$$HealthImplCopyWith<$Res> {
  factory _$$HealthImplCopyWith(
          _$HealthImpl value, $Res Function(_$HealthImpl) then) =
      __$$HealthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthImplCopyWithImpl<$Res>
    extends _$ReminderCategoryCopyWithImpl<$Res, _$HealthImpl>
    implements _$$HealthImplCopyWith<$Res> {
  __$$HealthImplCopyWithImpl(
      _$HealthImpl _value, $Res Function(_$HealthImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HealthImpl implements _Health {
  const _$HealthImpl();

  @override
  String toString() {
    return 'ReminderCategory.health()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HealthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() personal,
    required TResult Function() health,
    required TResult Function() study,
    required TResult Function() shopping,
    required TResult Function(String customName) other,
  }) {
    return health();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? work,
    TResult? Function()? personal,
    TResult? Function()? health,
    TResult? Function()? study,
    TResult? Function()? shopping,
    TResult? Function(String customName)? other,
  }) {
    return health?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? personal,
    TResult Function()? health,
    TResult Function()? study,
    TResult Function()? shopping,
    TResult Function(String customName)? other,
    required TResult orElse(),
  }) {
    if (health != null) {
      return health();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Health value) health,
    required TResult Function(_Study value) study,
    required TResult Function(_Shopping value) shopping,
    required TResult Function(_Other value) other,
  }) {
    return health(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Work value)? work,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Health value)? health,
    TResult? Function(_Study value)? study,
    TResult? Function(_Shopping value)? shopping,
    TResult? Function(_Other value)? other,
  }) {
    return health?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_Personal value)? personal,
    TResult Function(_Health value)? health,
    TResult Function(_Study value)? study,
    TResult Function(_Shopping value)? shopping,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (health != null) {
      return health(this);
    }
    return orElse();
  }
}

abstract class _Health implements ReminderCategory {
  const factory _Health() = _$HealthImpl;
}

/// @nodoc
abstract class _$$StudyImplCopyWith<$Res> {
  factory _$$StudyImplCopyWith(
          _$StudyImpl value, $Res Function(_$StudyImpl) then) =
      __$$StudyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudyImplCopyWithImpl<$Res>
    extends _$ReminderCategoryCopyWithImpl<$Res, _$StudyImpl>
    implements _$$StudyImplCopyWith<$Res> {
  __$$StudyImplCopyWithImpl(
      _$StudyImpl _value, $Res Function(_$StudyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StudyImpl implements _Study {
  const _$StudyImpl();

  @override
  String toString() {
    return 'ReminderCategory.study()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() personal,
    required TResult Function() health,
    required TResult Function() study,
    required TResult Function() shopping,
    required TResult Function(String customName) other,
  }) {
    return study();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? work,
    TResult? Function()? personal,
    TResult? Function()? health,
    TResult? Function()? study,
    TResult? Function()? shopping,
    TResult? Function(String customName)? other,
  }) {
    return study?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? personal,
    TResult Function()? health,
    TResult Function()? study,
    TResult Function()? shopping,
    TResult Function(String customName)? other,
    required TResult orElse(),
  }) {
    if (study != null) {
      return study();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Health value) health,
    required TResult Function(_Study value) study,
    required TResult Function(_Shopping value) shopping,
    required TResult Function(_Other value) other,
  }) {
    return study(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Work value)? work,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Health value)? health,
    TResult? Function(_Study value)? study,
    TResult? Function(_Shopping value)? shopping,
    TResult? Function(_Other value)? other,
  }) {
    return study?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_Personal value)? personal,
    TResult Function(_Health value)? health,
    TResult Function(_Study value)? study,
    TResult Function(_Shopping value)? shopping,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (study != null) {
      return study(this);
    }
    return orElse();
  }
}

abstract class _Study implements ReminderCategory {
  const factory _Study() = _$StudyImpl;
}

/// @nodoc
abstract class _$$ShoppingImplCopyWith<$Res> {
  factory _$$ShoppingImplCopyWith(
          _$ShoppingImpl value, $Res Function(_$ShoppingImpl) then) =
      __$$ShoppingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShoppingImplCopyWithImpl<$Res>
    extends _$ReminderCategoryCopyWithImpl<$Res, _$ShoppingImpl>
    implements _$$ShoppingImplCopyWith<$Res> {
  __$$ShoppingImplCopyWithImpl(
      _$ShoppingImpl _value, $Res Function(_$ShoppingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShoppingImpl implements _Shopping {
  const _$ShoppingImpl();

  @override
  String toString() {
    return 'ReminderCategory.shopping()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShoppingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() personal,
    required TResult Function() health,
    required TResult Function() study,
    required TResult Function() shopping,
    required TResult Function(String customName) other,
  }) {
    return shopping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? work,
    TResult? Function()? personal,
    TResult? Function()? health,
    TResult? Function()? study,
    TResult? Function()? shopping,
    TResult? Function(String customName)? other,
  }) {
    return shopping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? personal,
    TResult Function()? health,
    TResult Function()? study,
    TResult Function()? shopping,
    TResult Function(String customName)? other,
    required TResult orElse(),
  }) {
    if (shopping != null) {
      return shopping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Health value) health,
    required TResult Function(_Study value) study,
    required TResult Function(_Shopping value) shopping,
    required TResult Function(_Other value) other,
  }) {
    return shopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Work value)? work,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Health value)? health,
    TResult? Function(_Study value)? study,
    TResult? Function(_Shopping value)? shopping,
    TResult? Function(_Other value)? other,
  }) {
    return shopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_Personal value)? personal,
    TResult Function(_Health value)? health,
    TResult Function(_Study value)? study,
    TResult Function(_Shopping value)? shopping,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (shopping != null) {
      return shopping(this);
    }
    return orElse();
  }
}

abstract class _Shopping implements ReminderCategory {
  const factory _Shopping() = _$ShoppingImpl;
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customName});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$ReminderCategoryCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customName = null,
  }) {
    return _then(_$OtherImpl(
      null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtherImpl implements _Other {
  const _$OtherImpl(this.customName);

  @override
  final String customName;

  @override
  String toString() {
    return 'ReminderCategory.other(customName: $customName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            (identical(other.customName, customName) ||
                other.customName == customName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customName);

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() personal,
    required TResult Function() health,
    required TResult Function() study,
    required TResult Function() shopping,
    required TResult Function(String customName) other,
  }) {
    return other(customName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? work,
    TResult? Function()? personal,
    TResult? Function()? health,
    TResult? Function()? study,
    TResult? Function()? shopping,
    TResult? Function(String customName)? other,
  }) {
    return other?.call(customName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? personal,
    TResult Function()? health,
    TResult Function()? study,
    TResult Function()? shopping,
    TResult Function(String customName)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(customName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Health value) health,
    required TResult Function(_Study value) study,
    required TResult Function(_Shopping value) shopping,
    required TResult Function(_Other value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Work value)? work,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Health value)? health,
    TResult? Function(_Study value)? study,
    TResult? Function(_Shopping value)? shopping,
    TResult? Function(_Other value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_Personal value)? personal,
    TResult Function(_Health value)? health,
    TResult Function(_Study value)? study,
    TResult Function(_Shopping value)? shopping,
    TResult Function(_Other value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class _Other implements ReminderCategory {
  const factory _Other(final String customName) = _$OtherImpl;

  String get customName;

  /// Create a copy of ReminderCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
