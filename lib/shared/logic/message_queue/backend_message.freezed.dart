// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backend_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BackendMessage {
  String get srcClass => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get devDescription => throw _privateConstructorUsedError;
}

/// @nodoc

class _$BackendMessageImpl extends _BackendMessage {
  const _$BackendMessageImpl(
      {required this.srcClass,
      required this.message,
      required this.devDescription})
      : super._();

  @override
  final String srcClass;
  @override
  final String message;
  @override
  final String devDescription;

  @override
  String toString() {
    return 'BackendMessage(srcClass: $srcClass, message: $message, devDescription: $devDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackendMessageImpl &&
            (identical(other.srcClass, srcClass) ||
                other.srcClass == srcClass) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.devDescription, devDescription) ||
                other.devDescription == devDescription));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, srcClass, message, devDescription);
}

abstract class _BackendMessage extends BackendMessage {
  const factory _BackendMessage(
      {required final String srcClass,
      required final String message,
      required final String devDescription}) = _$BackendMessageImpl;
  const _BackendMessage._() : super._();

  @override
  String get srcClass;
  @override
  String get message;
  @override
  String get devDescription;
}
