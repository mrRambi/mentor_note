class MyException implements Exception {
  final String message;

  MyException(this.message);
}

class MyHttpException implements Exception {
  late String message;
  final int responseCode;

  void httpExceptions() {
    if (responseCode >= 300 && responseCode < 400) {
      message = 'Redirection Error';
    } else if (responseCode >= 400 && responseCode < 500) {
      message = 'Response error';
    } else if (responseCode >= 500) {
      message = 'Server error';
    }
  }

  MyHttpException(this.responseCode) {
    httpExceptions();
  }
}
