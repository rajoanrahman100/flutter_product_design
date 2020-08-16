import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterproductdesign/category.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


Future <List<Categoryy>>fetchCategories()async{

  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";

  final response=await http.get(apiUrl);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List<Categoryy> categories = (json.decode(response.body) as List)
        .map((data) => Categoryy.fromJson(data))
        .toList();
// It retuen list of categories
    return categories;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }

}