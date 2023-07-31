// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_stops_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbyStopsModel _$NearbyStopsModelFromJson(Map<String, dynamic> json) =>
    NearbyStopsModel(
      passingLines: (json['GecenHatlar'] as List<dynamic>?)
          ?.map((e) => PassingLinesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['Id'] as int?,
      name: json['Adi'] as String?,
      locationX: (json['KoorX'] as num?)?.toDouble(),
      locationY: (json['KoorY'] as num?)?.toDouble(),
      distance: (json['Mesafe'] as num?)?.toDouble(),
      passingLineNumbers: json['GecenHatNumaralari'] as String?,
    );

Map<String, dynamic> _$NearbyStopsModelToJson(NearbyStopsModel instance) =>
    <String, dynamic>{
      'GecenHatlar': instance.passingLines,
      'Id': instance.id,
      'Adi': instance.name,
      'KoorX': instance.locationX,
      'KoorY': instance.locationY,
      'Mesafe': instance.distance,
      'GecenHatNumaralari': instance.passingLineNumbers,
    };

PassingLinesModel _$PassingLinesModelFromJson(Map<String, dynamic> json) =>
    PassingLinesModel(
      name: json['Adi'] as String?,
      routeDescription: json['GuzergahAciklama'] as String?,
      routeNumber: json['HatNo'] as int?,
      searchName: json['AramaAdi'] as String?,
      description: json['Aciklama'] as String?,
      routeStart: json['HatBaslangic'] as String?,
      routeEnd: json['HatBitis'] as String?,
      tariff: json['Tarife'] as String?,
    );

Map<String, dynamic> _$PassingLinesModelToJson(PassingLinesModel instance) =>
    <String, dynamic>{
      'Adi': instance.name,
      'GuzergahAciklama': instance.routeDescription,
      'HatNo': instance.routeNumber,
      'AramaAdi': instance.searchName,
      'Aciklama': instance.description,
      'HatBaslangic': instance.routeStart,
      'HatBitis': instance.routeEnd,
      'Tarife': instance.tariff,
    };
