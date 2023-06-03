import 'package:ceiba/connections/models/geo_model.dart';
import 'package:hive/hive.dart';

class GeoAdapter extends TypeAdapter<GeoModel> {
  @override
  final int typeId = 2;

  @override
  GeoModel read(BinaryReader reader) {
    return GeoModel(
      lat: reader.readString(),
      lng: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, GeoModel obj) {
    writer.writeString(obj.lat);
    writer.writeString(obj.lng);
  }
}