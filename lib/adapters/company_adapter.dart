import 'package:ceiba/connections/models/company_model.dart';
import 'package:hive/hive.dart';

class CompanyAdapter extends TypeAdapter<CompanyModel> {
  @override
  final int typeId = 3;

  @override
  CompanyModel read(BinaryReader reader) {
    return CompanyModel(
      name: reader.readString(),
      catchPhrase: reader.readString(),
      bs: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, CompanyModel obj) {
    writer.writeString(obj.name);
    writer.writeString(obj.catchPhrase);
    writer.writeString(obj.bs);
  }
}
