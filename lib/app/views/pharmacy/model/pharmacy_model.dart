import 'package:json_annotation/json_annotation.dart';

part 'pharmacy_model.g.dart';

@JsonSerializable()
class PharmacyOnDutyModel {
  @JsonKey(name: 'Tarih')
  final String? date;
  @JsonKey(name: 'LokasyonY')
  final String? locationY;
  @JsonKey(name: 'LokasyonX')
  final String? locationX;
  @JsonKey(name: 'BolgeAciklama')
  final String? regionDescription;
  @JsonKey(name: 'Adi')
  final String? name;
  @JsonKey(name: 'Telefon')
  final String? phone;
  @JsonKey(name: 'Adres')
  final String? address;
  @JsonKey(name: 'BolgeId')
  final int? regionId;
  @JsonKey(name: 'Bolge')
  final String? region;
  @JsonKey(name: 'UzaklikMetre')
  final int? distanceMeter;
  @JsonKey(name: 'EczaneId')
  final int? pharmacyId;
  @JsonKey(name: 'IlceId')
  final int? districtId;

  const PharmacyOnDutyModel({
    this.date,
    this.locationY,
    this.locationX,
    this.regionDescription,
    this.name,
    this.phone,
    this.address,
    this.regionId,
    this.region,
    this.distanceMeter,
    this.pharmacyId,
    this.districtId,
  });

  factory PharmacyOnDutyModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyOnDutyModelFromJson(json);

  Map<String, dynamic> toJson() => _$PharmacyOnDutyModelToJson(this);
}
