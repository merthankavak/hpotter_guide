import 'package:freezed_annotation/freezed_annotation.dart';

import '../exceptions/exceptions.dart';

part 'failures.freezed.dart';

@freezed
class Failures with _$Failures {
  const Failures._();

  const factory Failures.networkFailure(NetworkException networkException) = NetworkFailure;
  const factory Failures.notFoundFailure() = NotFoundFailure;
}
