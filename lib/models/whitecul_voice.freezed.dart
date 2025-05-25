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

VoiceSettings _$VoiceSettingsFromJson(Map<String, dynamic> json) {
  return _VoiceSettings.fromJson(json);
}

/// @nodoc
mixin _$VoiceSettings {
  double get speed => throw _privateConstructorUsedError;
  double get pitch => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  int get speakerId =>
      throw _privateConstructorUsedError; // WhiteCULのspeaker_id
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Serializes this VoiceSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
@JsonSerializable()
class _$VoiceSettingsImpl implements _VoiceSettings {
  const _$VoiceSettingsImpl(
      {this.speed = 1.0,
      this.pitch = 1.0,
      this.volume = 1.0,
      this.speakerId = 50,
      this.isEnabled = true});

  factory _$VoiceSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceSettingsImplFromJson(json);

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceSettingsImplToJson(
      this,
    );
  }
}

abstract class _VoiceSettings implements VoiceSettings {
  const factory _VoiceSettings(
      {final double speed,
      final double pitch,
      final double volume,
      final int speakerId,
      final bool isEnabled}) = _$VoiceSettingsImpl;

  factory _VoiceSettings.fromJson(Map<String, dynamic> json) =
      _$VoiceSettingsImpl.fromJson;

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

VoiceMessage _$VoiceMessageFromJson(Map<String, dynamic> json) {
  return _VoiceMessage.fromJson(json);
}

/// @nodoc
mixin _$VoiceMessage {
  String get text => throw _privateConstructorUsedError;
  VoiceMessageType get type => throw _privateConstructorUsedError;
  String get audioFilePath => throw _privateConstructorUsedError;
  DateTime? get generatedAt => throw _privateConstructorUsedError;

  /// Serializes this VoiceMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
@JsonSerializable()
class _$VoiceMessageImpl implements _VoiceMessage {
  const _$VoiceMessageImpl(
      {required this.text,
      required this.type,
      this.audioFilePath = '',
      this.generatedAt});

  factory _$VoiceMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoiceMessageImplFromJson(json);

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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  Map<String, dynamic> toJson() {
    return _$$VoiceMessageImplToJson(
      this,
    );
  }
}

abstract class _VoiceMessage implements VoiceMessage {
  const factory _VoiceMessage(
      {required final String text,
      required final VoiceMessageType type,
      final String audioFilePath,
      final DateTime? generatedAt}) = _$VoiceMessageImpl;

  factory _VoiceMessage.fromJson(Map<String, dynamic> json) =
      _$VoiceMessageImpl.fromJson;

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
