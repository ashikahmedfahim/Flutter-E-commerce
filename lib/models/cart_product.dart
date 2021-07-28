import 'package:floor/floor.dart';

@entity
class CartProduct {
  @primaryKey
  final int id;

  final int productId;

  final int variantId;

  final int quantity;

  CartProduct(this.id, this.productId, this.variantId, this.quantity);
}
