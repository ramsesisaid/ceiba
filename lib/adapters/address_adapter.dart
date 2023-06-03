import 'package:ceiba/connections/models/address_model.dart';
import 'package:ceiba/connections/models/geo_model.dart';
import 'package:hive/hive.dart';

class AddressAdapter extends TypeAdapter<AddressModel> {
  @override
  final int typeId = 1;

  @override
  AddressModel read(BinaryReader reader) {
    return AddressModel(
      street: reader.readString(),
      suite: reader.readString(),
      city: reader.readString(),
      zipcode: reader.readString(),
      geo: reader.read() as GeoModel,
    );
  }

  @override
  void write(BinaryWriter writer, AddressModel obj) {
    writer.writeString(obj.street);
    writer.writeString(obj.suite);
    writer.writeString(obj.city);
    writer.writeString(obj.zipcode);
    writer.write(obj.geo);
  }
}
