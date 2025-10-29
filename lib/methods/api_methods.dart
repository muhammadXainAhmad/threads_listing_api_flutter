import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:threads_listing_api/models/post_model.dart';
import 'package:threads_listing_api/models/user_model.dart';

Future<List<UserModel>> getUserApi() async {
  try {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
      headers: {'Accept': 'application/json', 'User-Agent': 'FlutterApp/1.0'},
    );
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final List<UserModel> namesList = [];
      for (Map<String, dynamic> i in data) {
        namesList.add(UserModel.fromJson(i));
      }
      return namesList;
    } else {
      throw Exception(
        'Failed to load user data. Status code: ${response.statusCode}',
      );
    }
  } catch (e) {
    if (kDebugMode) {
      print('getUserApi error: $e');
    }
    rethrow;
  }
}

Future<List<PostModel>> getPostApi() async {
  try {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: {'Accept': 'application/json', 'User-Agent': 'FlutterApp/1.0'},
    );
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final List<PostModel> postsList = [];
      for (Map<String, dynamic> i in data) {
        postsList.add(PostModel.fromJson(i));
      }
      return postsList;
    } else {
      throw Exception(
        'Failed to load post data. Status code: ${response.statusCode}',
      );
    }
  } catch (e) {
    if (kDebugMode) {
      print('getPostApi error: $e');
    }
    rethrow;
  }
}
