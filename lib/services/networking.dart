import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    //parse String
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;

      //need import dart:convert
      var longitude = jsonDecode(data)['coord']['lon'];

      //khong phai . nhu js

      return  jsonDecode(data);
    } else {
      print('Falied');
    }
  }
}