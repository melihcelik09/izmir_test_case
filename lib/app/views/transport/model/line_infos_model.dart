import 'package:json_annotation/json_annotation.dart';

part 'line_infos_model.g.dart';

@JsonSerializable()
class LineInfosModel {
  @JsonKey(name: "HataMesaj")
  final String? errorMessage;
  @JsonKey(name: "HataVarMi")
  final bool? isError;
  @JsonKey(name: "Hatlar")
  final List<LinesModel>? lines;

  const LineInfosModel({
    this.errorMessage,
    this.isError,
    this.lines,
  });

  factory LineInfosModel.fromJson(Map<String, dynamic> json) =>
      _$LineInfosModelFromJson(json);

  Map<String, dynamic> toJson() => _$LineInfosModelToJson(this);
}

@JsonSerializable()
class LinesModel {
  @JsonKey(name: "HimHatId")
  final int? himLineId;
  @JsonKey(name: "HatId")
  final int? lineId;
  @JsonKey(name: "HatNo")
  final int? lineNo;
  @JsonKey(name: "Aciklama")
  final String? description;
  @JsonKey(name: "HatBitis")
  final String? lineEnd;
  @JsonKey(name: "HatBaslangic")
  final String? lineStart;
  @JsonKey(name: "Tarife")
  final String? tariff;
  @JsonKey(name: "CalismaSaatiDonus")
  final String? workingHoursReturn;
  @JsonKey(name: "CalismaSaatiGidis")
  final String? workingHoursDeparture;
  @JsonKey(name: "GuzergahAciklama")
  final String? routeDescription;
  @JsonKey(name: "Adi")
  final String? name;

  const LinesModel({
    this.himLineId,
    this.description,
    this.lineEnd,
    this.lineStart,
    this.tariff,
    this.workingHoursReturn,
    this.workingHoursDeparture,
    this.routeDescription,
    this.lineId,
    this.lineNo,
    this.name,
  });

  factory LinesModel.fromJson(Map<String, dynamic> json) =>
      _$LinesModelFromJson(json);

  Map<String, dynamic> toJson() => _$LinesModelToJson(this);
}
