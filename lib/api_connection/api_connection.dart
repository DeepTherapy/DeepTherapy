import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:deeptherapy/models/api_model.dart';

final _base = "https://cryptic-depths-14871.herokuapp.com";
final _tokenEndpoint = "/api-token-auth/";
final _tokenURL = _base + _tokenEndpoint;

Future<Token> getToken(UserLogin userLogin) async {
  print(_tokenURL);
  final http.Response response = await http.post(
    _tokenURL,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(userLogin.toDatabaseJson()),
  );
  if (response.statusCode == 200) {
    print(json.decode(response.body).toString());
    return Token.fromJson(json.decode(response.body));
  } else {
    print(json.decode(response.body).toString());
    throw Exception(json.decode(response.body));
  }
}