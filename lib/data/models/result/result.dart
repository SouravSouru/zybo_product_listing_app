import 'package:equatable/equatable.dart';

import '../../../core/utilities/enums/enums.dart';

class Result extends Equatable {
  final ErrorType? errorType;
  final String? message;
  final bool? isSuccess;
  final bool needPop;
  final bool? showAlert;

  const Result(
      {this.errorType,
      this.isSuccess,
      this.message,
      this.needPop = false,
      this.showAlert = false});

  @override
  List<Object?> get props =>
      [errorType, message, isSuccess, needPop, showAlert];

  Result copyWith({
    ErrorType? errorType,
    String? message,
    bool? isSuccess,
    bool? needPop,
    bool? showAlert,
  }) {
    return Result(
      errorType: errorType ?? this.errorType,
      message: message ?? this.message,
      isSuccess: isSuccess ?? this.isSuccess,
      needPop: needPop ?? this.needPop,
      showAlert: showAlert ?? this.showAlert,
    );
  }
}
