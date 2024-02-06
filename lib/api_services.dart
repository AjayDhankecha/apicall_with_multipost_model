import 'dart:convert';

import 'package:apicall_with_multipost_model/multi_post_apimodel.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<MultiPostModel>?> getApiData() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<MultiPostModel> model = List<MultiPostModel>.from(
            json.decode(response.body).map((x)=>MultiPostModel.fromJson(x)));
        return model;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
