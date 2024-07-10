import 'package:flutter/foundation.dart';

class ErrorModel {
  final int statusCode;
  final int errorMessage;

  ErrorModel({required this.statusCode, required this.errorMessage});

  factory ErrorModel.fromJson(Map<String, dynamic>jsonData){
    return ErrorModel(statusCode: jsonData['status'],
        errorMessage: jsonData['ErrorMessage']);
  }
}