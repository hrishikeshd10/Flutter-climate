// todo: This classs will take a url and will decode the jsonData

import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    print(response.statusCode);

    if (response.statusCode == 200) {
      String data = response.body;




     return jsonDecode(data);



    } else {
      print(response.statusCode);
    }
  }
}
