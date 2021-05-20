import 'api.dart';
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;

class APICrud {
  Future<void> apiTemplate() async {
    final client = RetryClient(http.Client());
    try {
      print(await client.read(productsAPIURL));
    } finally {
      client.close();
    }
  }
}
