// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PharmacyOnDutyModel _$PharmacyOnDutyModelFromJson(Map<String, dynamic> json) =>
    PharmacyOnDutyModel(
      date: json['Tarih'] as String?,
      locationY: json['LokasyonY'] as String?,
      locationX: json['LokasyonX'] as String?,
      regionDescription: json['BolgeAciklama'] as String?,
      name: json['Adi'] as String?,
      phone: json['Telefon'] as String?,
      address: json['Adres'] as String?,
      regionId: json['BolgeId'] as int?,
      region: json['Bolge'] as String?,
      distanceMeter: json['UzaklikMetre'] as int?,
      pharmacyId: json['EczaneId'] as int?,
      districtId: json['IlceId'] as int?,
    );

Map<String, dynamic> _$PharmacyOnDutyModelToJson(
        PharmacyOnDutyModel instance) =>
    <String, dynamic>{
      'Tarih': instance.date,
      'LokasyonY': instance.locationY,
      'LokasyonX': instance.locationX,
      'BolgeAciklama': instance.regionDescription,
      'Adi': instance.name,
      'Telefon': instance.phone,
      'Adres': instance.address,
      'BolgeId': instance.regionId,
      'Bolge': instance.region,
      'UzaklikMetre': instance.distanceMeter,
      'EczaneId': instance.pharmacyId,
      'IlceId': instance.districtId,
    };
