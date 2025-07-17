import 'package:json_annotation/json_annotation.dart';

import 'user_settings.dart';

part 'contact.g.dart';

@JsonSerializable()
class Contact {
  String? type;
  String? id;
  @JsonKey(name: 'message_received_from_partner_at')
  String? messageReceivedFromPartnerAt;
  @JsonKey(name: 'auth_user_id')
  int? authUserId;
  String? name;
  String? username;
  String? email;
  String? phone;
  String? gender;
  @JsonKey(name: 'country_id')
  int? countryId;
  @JsonKey(name: 'country_name')
  String? countryName;
  @JsonKey(name: 'state_id')
  int? stateId;
  @JsonKey(name: 'state_name')
  String? stateName;
  @JsonKey(name: 'city_id')
  int? cityId;
  @JsonKey(name: 'city_name')
  String? cityName;
  @JsonKey(name: 'is_active')
  bool? isActive;
  @JsonKey(name: 'customer_code')
  String? customerCode;
  @JsonKey(name: 'is_premium_customer')
  bool? isPremiumCustomer;
  @JsonKey(name: 'is_online')
  bool? isOnline;
  @JsonKey(name: 'last_active_at')
  DateTime? lastActiveAt;
  String? address;
  @JsonKey(name: 'date_of_birth')
  String? dateOfBirth;
  @JsonKey(name: 'native_language_id')
  int? nativeLanguageId;
  @JsonKey(name: 'native_language_name')
  String? nativeLanguageName;
  @JsonKey(name: 'referral_code')
  String? referralCode;
  @JsonKey(name: 'is_vanish_mode_enabled')
  bool? isVanishModeEnabled;
  @JsonKey(name: 'is_chat_initiated')
  bool? isChatInitiated;
  @JsonKey(name: 'likeback_created_at')
  DateTime? likebackCreatedAt;
  @JsonKey(name: 'profile_photo_url')
  String? profilePhotoUrl;
  @JsonKey(name: 'square100_profile_photo_url')
  String? square100ProfilePhotoUrl;
  @JsonKey(name: 'square300_profile_photo_url')
  String? square300ProfilePhotoUrl;
  @JsonKey(name: 'square500_profile_photo_url')
  String? square500ProfilePhotoUrl;
  int? age;
  UserSettings? userSettings;

  Contact({
    this.type,
    this.id,
    this.messageReceivedFromPartnerAt,
    this.authUserId,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.gender,
    this.countryId,
    this.countryName,
    this.stateId,
    this.stateName,
    this.cityId,
    this.cityName,
    this.isActive,
    this.customerCode,
    this.isPremiumCustomer,
    this.isOnline,
    this.lastActiveAt,
    this.address,
    this.dateOfBirth,
    this.nativeLanguageId,
    this.nativeLanguageName,
    this.referralCode,
    this.isVanishModeEnabled,
    this.isChatInitiated,
    this.likebackCreatedAt,
    this.profilePhotoUrl,
    this.square100ProfilePhotoUrl,
    this.square300ProfilePhotoUrl,
    this.square500ProfilePhotoUrl,
    this.age,
    this.userSettings,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return _$ContactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContactToJson(this);
}
