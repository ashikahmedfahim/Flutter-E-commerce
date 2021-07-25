import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:floor/floor.dart';
import 'package:lacuna/dao/cart_product_dao.dart';
import 'package:lacuna/models/cart_product.dart';
part 'database.g.dart';

@Database(version: 1, entities: [CartProduct])
abstract class LacunaDatabase extends FloorDatabase {
  CartProductDao get cartProductDao;
}
