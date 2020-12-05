// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

// ignore: unused_element
  Success<F, S> success<F, S>([S data]) {
    return Success<F, S>(
      data,
    );
  }

// ignore: unused_element
  Failure<F, S> failure<F, S>([F error]) {
    return Failure<F, S>(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result<F, S> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(S data),
    @required TResult failure(F error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(S data),
    TResult failure(F error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<F, S> value),
    @required TResult failure(Failure<F, S> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<F, S> value),
    TResult failure(Failure<F, S> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ResultCopyWith<F, S, $Res> {
  factory $ResultCopyWith(
          Result<F, S> value, $Res Function(Result<F, S>) then) =
      _$ResultCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<F, S, $Res> implements $ResultCopyWith<F, S, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<F, S> _value;
  // ignore: unused_field
  final $Res Function(Result<F, S>) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<F, S, $Res> {
  factory $SuccessCopyWith(
          Success<F, S> value, $Res Function(Success<F, S>) then) =
      _$SuccessCopyWithImpl<F, S, $Res>;
  $Res call({S data});
}

/// @nodoc
class _$SuccessCopyWithImpl<F, S, $Res> extends _$ResultCopyWithImpl<F, S, $Res>
    implements $SuccessCopyWith<F, S, $Res> {
  _$SuccessCopyWithImpl(
      Success<F, S> _value, $Res Function(Success<F, S>) _then)
      : super(_value, (v) => _then(v as Success<F, S>));

  @override
  Success<F, S> get _value => super._value as Success<F, S>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Success<F, S>(
      data == freezed ? _value.data : data as S,
    ));
  }
}

/// @nodoc
class _$Success<F, S> implements Success<F, S> {
  const _$Success([this.data]);

  @override
  final S data;

  @override
  String toString() {
    return 'Result<$F, $S>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<F, S> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $SuccessCopyWith<F, S, Success<F, S>> get copyWith =>
      _$SuccessCopyWithImpl<F, S, Success<F, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(S data),
    @required TResult failure(F error),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(S data),
    TResult failure(F error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<F, S> value),
    @required TResult failure(Failure<F, S> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<F, S> value),
    TResult failure(Failure<F, S> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<F, S> implements Result<F, S> {
  const factory Success([S data]) = _$Success<F, S>;

  S get data;
  $SuccessCopyWith<F, S, Success<F, S>> get copyWith;
}

/// @nodoc
abstract class $FailureCopyWith<F, S, $Res> {
  factory $FailureCopyWith(
          Failure<F, S> value, $Res Function(Failure<F, S>) then) =
      _$FailureCopyWithImpl<F, S, $Res>;
  $Res call({F error});
}

/// @nodoc
class _$FailureCopyWithImpl<F, S, $Res> extends _$ResultCopyWithImpl<F, S, $Res>
    implements $FailureCopyWith<F, S, $Res> {
  _$FailureCopyWithImpl(
      Failure<F, S> _value, $Res Function(Failure<F, S>) _then)
      : super(_value, (v) => _then(v as Failure<F, S>));

  @override
  Failure<F, S> get _value => super._value as Failure<F, S>;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Failure<F, S>(
      error == freezed ? _value.error : error as F,
    ));
  }
}

/// @nodoc
class _$Failure<F, S> implements Failure<F, S> {
  const _$Failure([this.error]);

  @override
  final F error;

  @override
  String toString() {
    return 'Result<$F, $S>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure<F, S> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $FailureCopyWith<F, S, Failure<F, S>> get copyWith =>
      _$FailureCopyWithImpl<F, S, Failure<F, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(S data),
    @required TResult failure(F error),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(S data),
    TResult failure(F error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(Success<F, S> value),
    @required TResult failure(Failure<F, S> value),
  }) {
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(Success<F, S> value),
    TResult failure(Failure<F, S> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<F, S> implements Result<F, S> {
  const factory Failure([F error]) = _$Failure<F, S>;

  F get error;
  $FailureCopyWith<F, S, Failure<F, S>> get copyWith;
}
