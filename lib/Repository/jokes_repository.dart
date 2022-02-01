import 'dart:convert';

import 'package:find_cribs_app/model/joke_model.dart';
import 'package:http/http.dart' as http;

class JokeRepository {
  final String _baseUrl = "https://v2.jokeapi.dev/joke/Any";

  Future<JokeModel> getJoke() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return JokeModel.fromJson(data);
    } else {
      throw Exception("Failed to load joke");
    }
  }
}
