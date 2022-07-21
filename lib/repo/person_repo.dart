import 'dart:convert';
import 'dart:core';

import 'package:adaptation_app/model/person.dart';
import 'package:flutter/services.dart';

Future<List<Person>> fetchPersonAssets(String assetsPath) async {
  final String response = await rootBundle.loadString(assetsPath);
  return parsePersons(response);
}

List<Person> parsePersons(String response) {
  final parsed = json.decode(response).cast<Map<String, dynamic>>();
  return parsed.map<Person>((json) => Person.fromJson(json)).toList();
}
