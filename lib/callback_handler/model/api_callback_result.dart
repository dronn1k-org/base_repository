library base_repository;

enum ApiCallbackStatus {
  success,

  backException,

  frontException,
}

class ApiCallbackResult<RESULT_TYPE, ERRORS_TYPE> {
  final ApiCallbackStatus callbackStatus;

  bool get isSuccess => callbackStatus == ApiCallbackStatus.success;
  bool get isBackException => callbackStatus == ApiCallbackStatus.backException;

  final RESULT_TYPE? data;
  final ERRORS_TYPE? errors;

  final int? statusCode;

  const ApiCallbackResult({
    required this.callbackStatus,
    this.data,
    this.errors,
    this.statusCode,
  });
}
