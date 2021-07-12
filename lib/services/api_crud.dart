// Package imports:
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class APICrud {
  final client = RetryClient(http.Client());
  Future<void> apiTemplate() async {
    try {
      // print(await client.read(productsAPIURL));
    } finally {
      client.close();
    }
  }
}
