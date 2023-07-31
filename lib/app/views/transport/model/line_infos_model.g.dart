// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_infos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineInfosModel _$LineInfosModelFromJson(Map<String, dynamic> json) =>
    LineInfosModel(
      errorMessage: json['HataMesaj'] as String?,
      isError: json['HataVarMi'] as bool?,
      lines: (json['Hatlar'] as List<dynamic>?)
          ?.map((e) => LinesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LineInfosModelToJson(LineInfosModel instance) =>
    <String, dynamic>{
      'HataMesaj': instance.errorMessage,
      'HataVarMi': instance.isError,
      'Hatlar': instance.lines,
    };

LinesModel _$LinesModelFromJson(Map<String, dynamic> json) => LinesModel(
      himLineId: json['HimHatId'] as int?,
      description: json['Aciklama'] as String?,
      lineEnd: json['HatBitis'] as String?,
      lineStart: json['HatBaslangic'] as String?,
      tariff: json['Tarife'] as String?,
      workingHoursReturn: json['CalismaSaatiDonus'] as String?,
      workingHoursDeparture: json['CalismaSaatiGidis'] as String?,
      routeDescription: json['GuzergahAciklama'] as String?,
      lineId: json['HatId'] as int?,
      lineNo: json['HatNo'] as int?,
      name: json['Adi'] as String?,
    );

Map<String, dynamic> _$LinesModelToJson(LinesModel instance) =>
    <String, dynamic>{
      'HimHatId': instance.himLineId,
      'HatId': instance.lineId,
      'HatNo': instance.lineNo,
      'Aciklama': instance.description,
      'HatBitis': instance.lineEnd,
      'HatBaslangic': instance.lineStart,
      'Tarife': instance.tariff,
      'CalismaSaatiDonus': instance.workingHoursReturn,
      'CalismaSaatiGidis': instance.workingHoursDeparture,
      'GuzergahAciklama': instance.routeDescription,
      'Adi': instance.name,
    };
