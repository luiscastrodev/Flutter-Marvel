import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:marvel_app/models/Events.dart';
import 'package:marvel_app/models/character.dart';
import 'package:http/http.dart' as http;

class API {
  Future<List<Character>> getCharacterList() async {
    const String url = "http://gateway.marvel.com/v1/public/";
    const private_key = "your private key from marvel";
    const String public_key = "your public key from marvel";

    var crypto = utf8.encode("1" + private_key + public_key);
    var digest = md5.convert(crypto);
    var hash =
        "characters?apikey=$public_key&hash=" + digest.toString() + "&ts=1";
    final response = await http.get(url + hash);

    if (response.statusCode == 200) {
      ResponseDefault responseDefault = ResponseDefault.fromJson(json.decode(response.body)['data']);
        var list = responseDefault.results;
        list.shuffle(); 
      return list;

    } else {
      throw Exception('Failed to Load!');
    }
  }

  
  Future<List<Events>> getEventsList() async {
    const String url = "http://gateway.marvel.com/v1/public/";
    const String private_key = "";
    const String public_key = "";

    var crypto = utf8.encode("1" + private_key + public_key);
    var digest = md5.convert(crypto);
    var hash =
        "events?apikey=$public_key&hash=" + digest.toString() + "&ts=1";
    final response = await http.get(url + hash);

    if (response.statusCode == 200) {
      ResponseDefaultEvent responseDefault = ResponseDefaultEvent.fromJson(json.decode(response.body));
      return responseDefault.data.results;
    } else {
      throw Exception('Failed to Load!');
    }
  }
}
