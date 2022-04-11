import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:mentor_note/core/exceptions.dart';

import 'model/note.dart';

class NoteApi {
  static final _baseUrl =
      Uri.parse('https://mocki.io/v1/6a379166-05b1-4635-bd66-fafe35fa38d5');
  Future<List<Note>> fetchData() async {
    try {
      final response = await http
          .get(_baseUrl, headers: {"Content-Type": "aplication/json"});
      if (response.statusCode != 200) {
        throw MyHttpException(response.statusCode);
      }
      final listOfJson = (jsonDecode(response.body) as List)
          .map((e) => Note.fromJson(jsonEncode(e)))
          .toList();
      return listOfJson;
    } on SocketException catch (e) {
      throw MyException('No internet connection');
    } catch (e) {
      throw MyException('Unknown error');
    }
  }
}



    // final listOfNotes =
    //     List<Note>.from(listOfJson.map((e) => Note.fromJson(e)));
    // listOfJson.map((e) => Note.fromJson(jsonEncode(e.toString()))).toList();
    //final jsonResponse = Note.fromJson(json.decode(response.body));