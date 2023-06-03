import 'package:hive/hive.dart';

@HiveType(typeId: 2)
class GeoModel {
  GeoModel({
    required this.lat,
    required this.lng,
  });

  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(
      lat: json['lat'],
      lng: json['lng'],
    );
  }

  @HiveField(0)
  final String lat;
  @HiveField(1)
  final String lng;
}