import 'package:json_annotation/json_annotation.dart';

part 'nearby_stops_model.g.dart';

@JsonSerializable()
class NearbyStopsModel {
  const NearbyStopsModel({
    this.passingLines,
    this.id,
    this.name,
    this.locationX,
    this.locationY,
    this.distance,
    this.passingLineNumbers,
  });

  @JsonKey(name: "GecenHatlar")
  final List<PassingLinesModel>? passingLines;
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "Adi")
  final String? name;
  @JsonKey(name: "KoorX")
  final double? locationX;
  @JsonKey(name: "KoorY")
  final double? locationY;
  @JsonKey(name: "Mesafe")
  final double? distance;
  @JsonKey(name: "GecenHatNumaralari")
  final String? passingLineNumbers;

  factory NearbyStopsModel.fromJson(Map<String, dynamic> json) =>
      _$NearbyStopsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NearbyStopsModelToJson(this);
}

@JsonSerializable()
class PassingLinesModel {
  const PassingLinesModel({
    this.name,
    this.routeDescription,
    this.routeNumber,
    this.searchName,
    this.description,
    this.routeStart,
    this.routeEnd,
    this.tariff,
  });

  @JsonKey(name: "Adi")
  final String? name;
  @JsonKey(name: "GuzergahAciklama")
  final String? routeDescription;
  @JsonKey(name: "HatNo")
  final int? routeNumber;
  @JsonKey(name: "AramaAdi")
  final String? searchName;
  @JsonKey(name: "Aciklama")
  final String? description;
  @JsonKey(name: "HatBaslangic")
  final String? routeStart;
  @JsonKey(name: "HatBitis")
  final String? routeEnd;
  @JsonKey(name: "Tarife")
  final String? tariff;

  factory PassingLinesModel.fromJson(Map<String, dynamic> json) =>
      _$PassingLinesModelFromJson(json);

  Map<String, dynamic> toJson() => _$PassingLinesModelToJson(this);
}
