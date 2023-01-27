import 'package:equatable/equatable.dart';

import 'failures/failures.dart';

class ErrorObject extends Equatable {
  const ErrorObject({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  List<Object?> get props => [title, message];

  static ErrorObject mapFailureToErrorObject({required Failures failure}) {
    return failure.when(
      networkFailure: (networkException) => ErrorObject(
          title: 'Error: ${networkException.statusCode}', message: networkException.message),
      notFoundFailure: () => const ErrorObject(
          title: 'Whoops!', message: 'We\'re unable to find the data that you\'re looking for'),
    );
  }
}
