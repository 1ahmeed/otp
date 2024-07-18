// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendOtpModel _$ResendOtpModelFromJson(Map<String, dynamic> json) =>
    ResendOtpModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      errors: json['errors'] as Map<String, dynamic>?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResendOtpModelToJson(ResendOtpModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'errors': instance.errors,
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'phone': instance.phone,
    };
