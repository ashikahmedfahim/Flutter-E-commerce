import 'package:floor/floor.dart';
import 'package:lacuna/models/cart_product.dart';

@dao
abstract class CartProductDao {
  @Query('SELECT * FROM CartProduct')
  Future<List<CartProduct>> findAllCartProducts();

  @Query('SELECT * FROM CartProduct WHERE id= :id')
  Stream<CartProduct?> findCartProductById(int id);

  @Query('SELECT * FROM CartProduct WHERE productId = :productId')
  Stream<CartProduct?> findCartProductByProductId(int productId);

  @insert
  Future<void> addCartProduct(CartProduct cartProduct);

  @insert
  Future<List<int>> addCartProducts(List<CartProduct> cartProducts);

  @update
  Future<void> updateCartProduct(CartProduct cartProduct);

  @update
  Future<int> updateCartProducts(List<CartProduct> cartProucts);

  @delete
  Future<void> deleteCartProduct(CartProduct cartProduct);

  @delete
  Future<int> deleteCartProducts(List<CartProduct> cartProducts);
}
