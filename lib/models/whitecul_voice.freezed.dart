// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whitecul_voice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoiceSettings {
  double get speed => throw _privateConstructorUsedError;
  double get pitch => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  int get speakerId =>
      throw _privateConstructorUsedError; // WhiteCULのspeaker_id
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Create a copy of VoiceSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoiceSettingsCopyWith<VoiceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceSettingsCopyWith<$Res> {
  factory $VoiceSettingsCopyWith(
          VoiceSettings value, $Res Function(VoiceSettings) then) =
      _$VoiceSettingsCopyWithImpl<$Res, VoiceSettings>;
  @useResult
  $Res call(
      {double speed,
      double pitch,
      double volume,
      int speakerId,
      bool isEnabled});
}

/// @nodoc
class _$VoiceSettingsCopyWithImpl<$Res, $Val extends VoiceSettings>
    implements $VoiceSettingsCopyWith<$Res> {
  _$VoiceSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoiceSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? pitch = null,
    Object? volume = null,
    Object? speakerId = null,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      speakerId: null == speakerId
          ? _value.speakerId
          : speakerId // ignore: cast_nullable_to_non_nullable
              as int,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoiceSettingsImplCopyWith<$Res>
    implements $VoiceSettingsCopyWith<$Res> {
  factory _$$VoiceSettingsImplCopyWith(
          _$VoiceSettingsImpl value, $Res Function(_$VoiceSettingsImpl) then) =
      __$$VoiceSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double speed,
      double pitch,
      double volume,
      int speakerId,
      bool isEnabled});
}

/// @nodoc
class __$$VoiceSettingsImplCopyWithImpl<$Res>
    extends _$VoiceSettingsCopyWithImpl<$Res, _$VoiceSettingsImpl>
    implements _$$VoiceSettingsImplCopyWith<$Res> {
  __$$VoiceSettingsImplCopyWithImpl(
      _$VoiceSettingsImpl _value, $Res Function(_$VoiceSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoiceSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? pitch = null,
    Object? volume = null,
    Object? speakerId = null,
    Object? isEnabled = null,
  }) {
    return _then(_$VoiceSettingsImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      speakerId: null == speakerId
          ? _value.speakerId
          : speakerId // ignore: cast_nullable_to_non_nullable
              as int,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VoiceSettingsImpl implements _VoiceSettings {
  const _$VoiceSettingsImpl(
      {this.speed = 1.0,
      this.pitch = 1.0,
      this.volume = 1.0,
      this.speakerId = 50,
      this.isEnabled = true});

  @override
  @JsonKey()
  final double speed;
  @override
  @JsonKey()
  final double pitch;
  @override
  @JsonKey()
  final double volume;
  @override
  @JsonKey()
  final int speakerId;
// WhiteCULのspeaker_id
  @override
  @JsonKey()
  final bool isEnabled;

  @override
  String toString() {
    return 'VoiceSettings(speed: $speed, pitch: $pitch, volume: $volume, speakerId: $speakerId, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceSettingsImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.pitch, pitch) || other.pitch == pitch) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.speakerId, speakerId) ||
                other.speakerId == speakerId) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, speed, pitch, volume, speakerId, isEnabled);

  /// Create a copy of VoiceSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceSettingsImplCopyWith<_$VoiceSettingsImpl> get copyWith =>
      __$$VoiceSettingsImplCopyWithImpl<_$VoiceSettingsImpl>(this, _$identity);
}

abstract class _VoiceSettings implements VoiceSettings {
  const factory _VoiceSettings(
      {final double speed,
      final double pitch,
      final double volume,
      final int speakerId,
      final bool isEnabled}) = _$VoiceSettingsImpl;

  @override
  double get speed;
  @override
  double get pitch;
  @override
  double get volume;
  @override
  int get speakerId; // WhiteCULのspeaker_id
  @override
  bool get isEnabled;

  /// Create a copy of VoiceSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoiceSettingsImplCopyWith<_$VoiceSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VoiceMessage {
  String get text => throw _privateConstructorUsedError;
  VoiceMessageType get type => throw _privateConstructorUsedError;
  String get audioFilePath => throw _privateConstructorUsedError;
  DateTime? get generatedAt => throw _privateConstructorUsedError;

  /// Create a copy of VoiceMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VoiceMessageCopyWith<VoiceMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceMessageCopyWith<$Res> {
  factory $VoiceMessageCopyWith(
          VoiceMessage value, $Res Function(VoiceMessage) then) =
      _$VoiceMessageCopyWithImpl<$Res, VoiceMessage>;
  @useResult
  $Res call(
      {String text,
      VoiceMessageType type,
      String audioFilePath,
      DateTime? generatedAt});

  $VoiceMessageTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$VoiceMessageCopyWithImpl<$Res, $Val extends VoiceMessage>
    implements $VoiceMessageCopyWith<$Res> {
  _$VoiceMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoiceMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? audioFilePath = null,
    Object? generatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VoiceMessageType,
      audioFilePath: null == audioFilePath
          ? _value.audioFilePath
          : audioFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      generatedAt: freezed == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of VoiceMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoiceMessageTypeCopyWith<$Res> get type {
    return $VoiceMessageTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VoiceMessageImplCopyWith<$Res>
    implements $VoiceMessageCopyWith<$Res> {
  factory _$$VoiceMessageImplCopyWith(
          _$VoiceMessageImpl value, $Res Function(_$VoiceMessageImpl) then) =
      __$$VoiceMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      VoiceMessageType type,
      String audioFilePath,
      DateTime? generatedAt});

  @override
  $VoiceMessageTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$VoiceMessageImplCopyWithImpl<$Res>
    extends _$VoiceMessageCopyWithImpl<$Res, _$VoiceMessageImpl>
    implements _$$VoiceMessageImplCopyWith<$Res> {
  __$$VoiceMessageImplCopyWithImpl(
      _$VoiceMessageImpl _value, $Res Function(_$VoiceMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoiceMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? type = null,
    Object? audioFilePath = null,
    Object? generatedAt = freezed,
  }) {
    return _then(_$VoiceMessageImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VoiceMessageType,
      audioFilePath: null == audioFilePath
          ? _value.audioFilePath
          : audioFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      generatedAt: freezed == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$VoiceMessageImpl implements _VoiceMessage {
  const _$VoiceMessageImpl(
      {required this.text,
      required this.type,
      this.audioFilePath = '',
      this.generatedAt});

  @override
  final String text;
  @override
  final VoiceMessageType type;
  @override
  @JsonKey()
  final String audioFilePath;
  @override
  final DateTime? generatedAt;

  @override
  String toString() {
    return 'VoiceMessage(text: $text, type: $type, audioFilePath: $audioFilePath, generatedAt: $generatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoiceMessageImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.audioFilePath, audioFilePath) ||
                other.audioFilePath == audioFilePath) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, text, type, audioFilePath, generatedAt);

  /// Create a copy of VoiceMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VoiceMessageImplCopyWith<_$VoiceMessageImpl> get copyWith =>
      __$$VoiceMessageImplCopyWithImpl<_$VoiceMessageImpl>(this, _$identity);
}

abstract class _VoiceMessage implements VoiceMessage {
  const factory _VoiceMessage(
      {required final String text,
      required final VoiceMessageType type,
      final String audioFilePath,
      final DateTime? generatedAt}) = _$VoiceMessageImpl;

  @override
  String get text;
  @override
  VoiceMessageType get type;
  @override
  String get audioFilePath;
  @override
  DateTime? get generatedAt;

  /// Create a copy of VoiceMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VoiceMessageImplCopyWith<_$VoiceMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VoiceMessageType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reminder,
    required TResult Function() greeting,
    required TResult Function() completion,
    required TResult Function(String customType) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reminder,
    TResult? Function()? greeting,
    TResult? Function()? completion,
    TResult? Function(String customType)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reminder,
    TResult Function()? greeting,
    TResult Function()? completion,
    TResult Function(String customType)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReminderMessage value) reminder,
    required TResult Function(_GreetingMessage value) greeting,
    required TResult Function(_CompletionMessage value) completion,
    required TResult Function(_CustomMessage value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReminderMessage value)? reminder,
    TResult? Function(_GreetingMessage value)? greeting,
    TResult? Function(_CompletionMessage value)? completion,
    TResult? Function(_CustomMessage value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReminderMessage value)? reminder,
    TResult Function(_GreetingMessage value)? greeting,
    TResult Function(_CompletionMessage value)? completion,
    TResult Function(_CustomMessage value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceMessageTypeCopyWith<$Res> {
  factory $VoiceMessageTypeCopyWith(
          VoiceMessageType value, $Res Function(VoiceMessageType) then) =
      _$VoiceMessageTypeCopyWithImpl<$Res, VoiceMessageType>;
}

/// @nodoc
class _$VoiceMessageTypeCopyWithImpl<$Res, $Val extends VoiceMessageType>
    implements $VoiceMessageTypeCopyWith<$Res> {
  _$VoiceMessageTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoiceMessageType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ReminderMessageImplCopyWith<$Res> {
  factory _$$ReminderMessageImplCopyWith(_$ReminderMessageImpl value,
          $Res Function(_$ReminderMessageImpl) then) =
      __$$ReminderMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReminderMessageImplCopyWithImpl<$Res>
    extends _$VoiceMessageTypeCopyWithImpl<$Res, _$ReminderMessageImpl>
    implements _$$ReminderMessageImplCopyWith<$Res> {
  __$$ReminderMessageImplCopyWithImpl(
      _$ReminderMessageImpl _value, $Res Function(_$ReminderMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoiceMessageType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReminderMessageImpl implements _ReminderMessage {
  const _$ReminderMessageImpl();

  @override
  String toString() {
    return 'VoiceMessageType.reminder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReminderMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reminder,
    required TResult Function() greeting,
    required TResult Function() completion,
    required TResult Function(String customType) custom,
  }) {
    return reminder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reminder,
    TResult? Function()? greeting,
    TResult? Function()? completion,
    TResult? Function(String customType)? custom,
  }) {
    return reminder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reminder,
    TResult Function()? greeting,
    TResult Function()? completion,
    TResult Function(String customType)? custom,
    required TResult orElse(),
  }) {
    if (reminder != null) {
      return reminder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReminderMessage value) reminder,
    required TResult Function(_GreetingMessage value) greeting,
    required TResult Function(_CompletionMessage value) completion,
    required TResult Function(_CustomMessage value) custom,
  }) {
    return reminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReminderMessage value)? reminder,
    TResult? Function(_GreetingMessage value)? greeting,
    TResult? Function(_CompletionMessage value)? completion,
    TResult? Function(_CustomMessage value)? custom,
  }) {
    return reminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReminderMessage value)? reminder,
    TResult Function(_GreetingMessage value)? greeting,
    TResult Function(_CompletionMessage value)? completion,
    TResult Function(_CustomMessage value)? custom,
    required TResult orElse(),
  }) {
    if (reminder != null) {
      return reminder(this);
    }
    return orElse();
  }
}

abstract class _ReminderMessage implements VoiceMessageType {
  const factory _ReminderMessage() = _$ReminderMessageImpl;
}

/// @nodoc
abstract class _$$GreetingMessageImplCopyWith<$Res> {
  factory _$$GreetingMessageImplCopyWith(_$GreetingMessageImpl value,
          $Res Function(_$GreetingMessageImpl) then) =
      __$$GreetingMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GreetingMessageImplCopyWithImpl<$Res>
    extends _$VoiceMessageTypeCopyWithImpl<$Res, _$GreetingMessageImpl>
    implements _$$GreetingMessageImplCopyWith<$Res> {
  __$$GreetingMessageImplCopyWithImpl(
      _$GreetingMessageImpl _value, $Res Function(_$GreetingMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoiceMessageType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GreetingMessageImpl implements _GreetingMessage {
  const _$GreetingMessageImpl();

  @override
  String toString() {
    return 'VoiceMessageType.greeting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GreetingMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reminder,
    required TResult Function() greeting,
    required TResult Function() completion,
    required TResult Function(String customType) custom,
  }) {
    return greeting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reminder,
    TResult? Function()? greeting,
    TResult? Function()? completion,
    TResult? Function(String customType)? custom,
  }) {
    return greeting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reminder,
    TResult Function()? greeting,
    TResult Function()? completion,
    TResult Function(String customType)? custom,
    required TResult orElse(),
  }) {
    if (greeting != null) {
      return greeting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReminderMessage value) reminder,
    required TResult Function(_GreetingMessage value) greeting,
    required TResult Function(_CompletionMessage value) completion,
    required TResult Function(_CustomMessage value) custom,
  }) {
    return greeting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReminderMessage value)? reminder,
    TResult? Function(_GreetingMessage value)? greeting,
    TResult? Function(_CompletionMessage value)? completion,
    TResult? Function(_CustomMessage value)? custom,
  }) {
    return greeting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReminderMessage value)? reminder,
    TResult Function(_GreetingMessage value)? greeting,
    TResult Function(_CompletionMessage value)? completion,
    TResult Function(_CustomMessage value)? custom,
    required TResult orElse(),
  }) {
    if (greeting != null) {
      return greeting(this);
    }
    return orElse();
  }
}

abstract class _GreetingMessage implements VoiceMessageType {
  const factory _GreetingMessage() = _$GreetingMessageImpl;
}

/// @nodoc
abstract class _$$CompletionMessageImplCopyWith<$Res> {
  factory _$$CompletionMessageImplCopyWith(_$CompletionMessageImpl value,
          $Res Function(_$CompletionMessageImpl) then) =
      __$$CompletionMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletionMessageImplCopyWithImpl<$Res>
    extends _$VoiceMessageTypeCopyWithImpl<$Res, _$CompletionMessageImpl>
    implements _$$CompletionMessageImplCopyWith<$Res> {
  __$$CompletionMessageImplCopyWithImpl(_$CompletionMessageImpl _value,
      $Res Function(_$CompletionMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoiceMessageType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletionMessageImpl implements _CompletionMessage {
  const _$CompletionMessageImpl();

  @override
  String toString() {
    return 'VoiceMessageType.completion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletionMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reminder,
    required TResult Function() greeting,
    required TResult Function() completion,
    required TResult Function(String customType) custom,
  }) {
    return completion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reminder,
    TResult? Function()? greeting,
    TResult? Function()? completion,
    TResult? Function(String customType)? custom,
  }) {
    return completion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reminder,
    TResult Function()? greeting,
    TResult Function()? completion,
    TResult Function(String customType)? custom,
    required TResult orElse(),
  }) {
    if (completion != null) {
      return completion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReminderMessage value) reminder,
    required TResult Function(_GreetingMessage value) greeting,
    required TResult Function(_CompletionMessage value) completion,
    required TResult Function(_CustomMessage value) custom,
  }) {
    return completion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReminderMessage value)? reminder,
    TResult? Function(_GreetingMessage value)? greeting,
    TResult? Function(_CompletionMessage value)? completion,
    TResult? Function(_CustomMessage value)? custom,
  }) {
    return completion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReminderMessage value)? reminder,
    TResult Function(_GreetingMessage value)? greeting,
    TResult Function(_CompletionMessage value)? completion,
    TResult Function(_CustomMessage value)? custom,
    required TResult orElse(),
  }) {
    if (completion != null) {
      return completion(this);
    }
    return orElse();
  }
}

abstract class _CompletionMessage implements VoiceMessageType {
  const factory _CompletionMessage() = _$CompletionMessageImpl;
}

/// @nodoc
abstract class _$$CustomMessageImplCopyWith<$Res> {
  factory _$$CustomMessageImplCopyWith(
          _$CustomMessageImpl value, $Res Function(_$CustomMessageImpl) then) =
      __$$CustomMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customType});
}

/// @nodoc
class __$$CustomMessageImplCopyWithImpl<$Res>
    extends _$VoiceMessageTypeCopyWithImpl<$Res, _$CustomMessageImpl>
    implements _$$CustomMessageImplCopyWith<$Res> {
  __$$CustomMessageImplCopyWithImpl(
      _$CustomMessageImpl _value, $Res Function(_$CustomMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoiceMessageType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customType = null,
  }) {
    return _then(_$CustomMessageImpl(
      null == customType
          ? _value.customType
          : customType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomMessageImpl implements _CustomMessage {
  const _$CustomMessageImpl(this.customType);

  @override
  final String customType;

  @override
  String toString() {
    return 'VoiceMessageType.custom(customType: $customType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomMessageImpl &&
            (identical(other.customType, customType) ||
                other.customType == customType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customType);

  /// Create a copy of VoiceMessageType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomMessageImplCopyWith<_$CustomMessageImpl> get copyWith =>
      __$$CustomMessageImplCopyWithImpl<_$CustomMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reminder,
    required TResult Function() greeting,
    required TResult Function() completion,
    required TResult Function(String customType) custom,
  }) {
    return custom(customType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reminder,
    TResult? Function()? greeting,
    TResult? Function()? completion,
    TResult? Function(String customType)? custom,
  }) {
    return custom?.call(customType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reminder,
    TResult Function()? greeting,
    TResult Function()? completion,
    TResult Function(String customType)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(customType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReminderMessage value) reminder,
    required TResult Function(_GreetingMessage value) greeting,
    required TResult Function(_CompletionMessage value) completion,
    required TResult Function(_CustomMessage value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReminderMessage value)? reminder,
    TResult? Function(_GreetingMessage value)? greeting,
    TResult? Function(_CompletionMessage value)? completion,
    TResult? Function(_CustomMessage value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReminderMessage value)? reminder,
    TResult Function(_GreetingMessage value)? greeting,
    TResult Function(_CompletionMessage value)? completion,
    TResult Function(_CustomMessage value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class _CustomMessage implements VoiceMessageType {
  const factory _CustomMessage(final String customType) = _$CustomMessageImpl;

  String get customType;

  /// Create a copy of VoiceMessageType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomMessageImplCopyWith<_$CustomMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
