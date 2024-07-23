import 'package:json_annotation/json_annotation.dart';
import 'package:otp_creative_minds/features/otp/domain/entity/verify_otp_entity.dart';

part 'verify_otp_model.g.dart';

@JsonSerializable()
class VerifyOtpModel extends VerifyOtpEntity {
  Data? data;
  dynamic errors;
  String? message;
  bool? success;

  VerifyOtpModel({
    this.data,
    this.errors,
    this.message,
    this.success,}) :super(
      phone:data!.profile!.phone!,
      image:data.profile!.image!,
      name:data.profile!.name!,
      email:data.profile!.email!,
      country:data.profile!.countryName!,
      dateOfBirth:data.profile!.birthdate!,
      nationality:data.profile!.userNationality!
  );

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpModelToJson(this);


}

@JsonSerializable()
class Data {
  Profile? profile;
  String? token;

  Data({
    this.profile,
    this.token,});


  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

@JsonSerializable()
class Profile {
  Profile({
    this.id,
    this.image,
    this.birthdate,
    this.hijriBirthdate,
    this.phone,
    this.countryCode,
    this.countryName,
    this.email,
    this.name,
    this.fullName,
    this.residencyNumber,
    this.residencyStatus,
    this.nationalityId,
    this.userNationality,
    this.hasTax,
    this.taxNumber,
    this.paymentWays,
    this.paymentWayValue,
    this.paymentType,
    this.bankAccountNumber,
    this.entryTime,
    this.exitTime,
    this.entryTimeFull,
    this.exitTimeFull,
    this.currency,
    this.cancellationReturnPolicyId,
    this.completedProfile,
    this.hasBookingConditions,
    this.bookingConditionsText,
    this.totalOrders,
    this.rates,
    this.blocks,
    this.usageAgreementDate,
    this.usageAgreementDay,
    this.ownerTotalOrders,
    this.requestsDebts,
    this.ownerTotalFlats,
    this.ownerSales,
    this.ownerRates,
    this.ownerBlocks,
    this.isVerified,
    this.registeredAt,
    this.registeredYear,
    this.contactusRoom,
    this.ownerWallet,
    this.userWallet,
    this.isManager,
    this.ownerId,
    this.newNotifications,
    this.ownerNewNotifications,
    this.newChats,
    this.ownerNewChats,
    this.personaVerified,
    this.personaVerifyLink,});


  int? id;
  String? image;
  String? birthdate;
  dynamic hijriBirthdate;
  String? phone;
  String? countryCode;
  @JsonKey(name: "country_name")
  String? countryName;
  String? email;
  String? name;
  String? fullName;
  String? residencyNumber;
  String? residencyStatus;
  int? nationalityId;
  @JsonKey(name: "user_nationality")
  String? userNationality;
  int? hasTax;
  dynamic taxNumber;
  String? paymentWays;
  String? paymentWayValue;
  String? paymentType;
  String? bankAccountNumber;
  String? entryTime;
  String? exitTime;
  String? entryTimeFull;
  String? exitTimeFull;
  String? currency;
  int? cancellationReturnPolicyId;
  int? completedProfile;
  int? hasBookingConditions;
  dynamic bookingConditionsText;
  int? totalOrders;
  String? rates;
  int? blocks;
  String? usageAgreementDate;
  String? usageAgreementDay;
  int? ownerTotalOrders;
  int? requestsDebts;
  int? ownerTotalFlats;
  int? ownerSales;
  String? ownerRates;
  int? ownerBlocks;
  int? isVerified;
  String? registeredAt;
  String? registeredYear;
  int? contactusRoom;
  int? ownerWallet;
  int? userWallet;
  int? isManager;
  dynamic ownerId;
  int? newNotifications;
  int? ownerNewNotifications;
  int? newChats;
  int? ownerNewChats;
  int? personaVerified;
  String? personaVerifyLink;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}