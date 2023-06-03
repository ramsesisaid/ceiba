import 'package:ceiba/connections/models/address_model.dart';
import 'package:ceiba/connections/models/company_model.dart';
import 'package:ceiba/connections/models/user_model.dart';
import 'package:hive/hive.dart';

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
 UserModel read(BinaryReader reader) {
   return UserModel(
     id: reader.readInt(),
     name: reader.readString(),
     username: reader.readString(),
     email: reader.readString(),
     address: reader.read() as AddressModel,
     phone: reader.readString(),
     website: reader.readString(),
     company: reader.read() as CompanyModel,
   );
 }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.username);
    writer.writeString(obj.email);
    writer.write(obj.address);
    writer.writeString(obj.phone);
    writer.writeString(obj.website);
    writer.write(obj.company);
  }
}




