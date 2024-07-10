abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? header,
  });

  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? header,
    Map<String, dynamic>? body,
  });

  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? header,
    Map<String, dynamic>? body,
  });
}
