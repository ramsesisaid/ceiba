import 'package:ceiba/adapters/address_adapter.dart';
import 'package:ceiba/adapters/company_adapter.dart';
import 'package:ceiba/adapters/geo_adapter.dart';
import 'package:ceiba/adapters/users_adapter.dart';
import 'package:ceiba/connections/models/user_model.dart';
import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:hive/hive.dart';

class UsersBox {
  Future<Box<List<dynamic>>> _openBox() async {
    try {
      Hive
        ..registerAdapter(UserModelAdapter())
        ..registerAdapter(AddressAdapter())
        ..registerAdapter(CompanyAdapter())
        ..registerAdapter(GeoAdapter());
    } catch (e) {
      //
    }

    return await Hive.openBox<List<dynamic>>(CeibaConstants.hiveBoxName);
  }

  Future<bool> saveUsers(List<UserModel> users) async {
    try {
      final box = await _openBox();
      await box.put(CeibaConstants.hiveBoxName, users);
      await box.close();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<UserModel>> getUsers() async {
    final box = await _openBox();
    List<UserModel> users = box
        .get(CeibaConstants.hiveBoxName, defaultValue: [])!.cast<UserModel>();
    await box.close();
    return users;
  }
}
