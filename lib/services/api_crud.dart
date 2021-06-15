import 'api.dart';
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;

class APICrud {
  final client = RetryClient(http.Client());
  Future<void> apiTemplate() async {
    try {
      print(await client.read(productsAPIURL));
    } finally {
      client.close();
    }
  }
}
