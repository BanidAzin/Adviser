import 'dart:convert';

import 'package:advicer/features/advice/advice.dart';

import 'package:http/http.dart' as http;

abstract class AdviceRemoteData {
  Future<AdviceModel> getAdviceFromRemote();
}

class AdviceRemoteDataImp implements AdviceRemoteData {
  final http.Client client = http.Client();

  @override
  Future<AdviceModel> getAdviceFromRemote() async {
    final response = await client
        .get(Uri.parse("https://api.flutter-community.com/api/v1/advice"));

    final Map<String, dynamic> responseBody = jsonDecode(response.body);

    return AdviceModel.fromJson(responseBody);
  }
}
