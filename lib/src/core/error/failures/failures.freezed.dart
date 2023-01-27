// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkException networkException) networkFailure,
    required TResult Function() notFoundFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkException networkException)? networkFailure,
    TResult? Function()? notFoundFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkException networkException)? networkFailure,
    TResult Function()? notFoundFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(NotFoundFailure value) notFoundFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(NotFoundFailure value)? notFoundFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(NotFoundFailure value)? notFoundFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailuresCopyWith<$Res> {
  factory $FailuresCopyWith(Failures value, $Res Function(Failures) then) =
      _$FailuresCopyWithImpl<$Res, Failures>;
}

/// @nodoc
class _$FailuresCopyWithImpl<$Res, $Val extends Failures>
    implements $FailuresCopyWith<$Res> {
  _$FailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkFailureCopyWith<$Res> {
  factory _$$NetworkFailureCopyWith(
          _$NetworkFailure value, $Res Function(_$NetworkFailure) then) =
      __$$NetworkFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkException networkException});
}

/// @nodoc
class __$$NetworkFailureCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$NetworkFailure>
    implements _$$NetworkFailureCopyWith<$Res> {
  __$$NetworkFailureCopyWithImpl(
      _$NetworkFailure _value, $Res Function(_$NetworkFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = null,
  }) {
    return _then(_$NetworkFailure(
      null == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkException,
    ));
  }
}

/// @nodoc

class _$NetworkFailure extends NetworkFailure {
  const _$NetworkFailure(this.networkException) : super._();

  @override
  final NetworkException networkException;

  @override
  String toString() {
    return 'Failures.networkFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailure &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureCopyWith<_$NetworkFailure> get copyWith =>
      __$$NetworkFailureCopyWithImpl<_$NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkException networkException) networkFailure,
    required TResult Function() notFoundFailure,
  }) {
    return networkFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkException networkException)? networkFailure,
    TResult? Function()? notFoundFailure,
  }) {
    return networkFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkException networkException)? networkFailure,
    TResult Function()? notFoundFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(NotFoundFailure value) notFoundFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(NotFoundFailure value)? notFoundFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(NotFoundFailure value)? notFoundFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure extends Failures {
  const factory NetworkFailure(final NetworkException networkException) =
      _$NetworkFailure;
  const NetworkFailure._() : super._();

  NetworkException get networkException;
  @JsonKey(ignore: true)
  _$$NetworkFailureCopyWith<_$NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureCopyWith<$Res> {
  factory _$$NotFoundFailureCopyWith(
          _$NotFoundFailure value, $Res Function(_$NotFoundFailure) then) =
      __$$NotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundFailureCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res, _$NotFoundFailure>
    implements _$$NotFoundFailureCopyWith<$Res> {
  __$$NotFoundFailureCopyWithImpl(
      _$NotFoundFailure _value, $Res Function(_$NotFoundFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundFailure extends NotFoundFailure {
  const _$NotFoundFailure() : super._();

  @override
  String toString() {
    return 'Failures.notFoundFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkException networkException) networkFailure,
    required TResult Function() notFoundFailure,
  }) {
    return notFoundFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkException networkException)? networkFailure,
    TResult? Function()? notFoundFailure,
  }) {
    return notFoundFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkException networkException)? networkFailure,
    TResult Function()? notFoundFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(NotFoundFailure value) notFoundFailure,
  }) {
    return notFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? networkFailure,
    TResult? Function(NotFoundFailure value)? notFoundFailure,
  }) {
    return notFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(NotFoundFailure value)? notFoundFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(this);
    }
    return orElse();
  }
}

abstract class NotFoundFailure extends Failures {
  const factory NotFoundFailure() = _$NotFoundFailure;
  const NotFoundFailure._() : super._();
}
