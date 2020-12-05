import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<F, S> with _$Result<F, S> {
  const factory Result.success([S data]) = Success<F, S>;

  const factory Result.failure([F error]) = Failure<F, S>;
}
