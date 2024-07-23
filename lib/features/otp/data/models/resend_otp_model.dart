


import 'package:json_annotation/json_annotation.dart';

part 'resend_otp_model.g.dart';

@JsonSerializable()
class ResendOtpModel {
  final bool? success;
  final String? message;
  final Map<String, dynamic>? errors; // Handle potential errors dynamically
  final DataModel? data; // Make data nullable to handle potential absence

  factory ResendOtpModel.fromJson(Map<String, dynamic> json) => _$ResendOtpModelFromJson(json);


  Map<String, dynamic> toJson() => _$ResendOtpModelToJson(this);

  ResendOtpModel({
      this.success,
      this.message,
      this.errors,
    required this.data,
  });

  // @override
  // String toString() => 'ResendOtpResponse{success: $success, message: $message, errors: $errors, data: $data}';
}

@JsonSerializable()
class DataModel {
  final String? phone;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
  Map<String, dynamic> toJson() => _$DataModelToJson(this);


  DataModel({required this.phone});

  @override
  String toString() => 'Data{phone: $phone}';
}