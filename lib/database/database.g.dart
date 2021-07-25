// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorLacunaDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$LacunaDatabaseBuilder databaseBuilder(String name) =>
      _$LacunaDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$LacunaDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$LacunaDatabaseBuilder(null);
}

class _$LacunaDatabaseBuilder {
  _$LacunaDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$LacunaDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$LacunaDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<LacunaDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$LacunaDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$LacunaDatabase extends LacunaDatabase {
  _$LacunaDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CartProductDao? _cartProductDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CartProduct` (`id` INTEGER NOT NULL, `productId` INTEGER NOT NULL, `variantId` INTEGER NOT NULL, `quantity` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CartProductDao get cartProductDao {
    return _cartProductDaoInstance ??=
        _$CartProductDao(database, changeListener);
  }
}

class _$CartProductDao extends CartProductDao {
  _$CartProductDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _cartProductInsertionAdapter = InsertionAdapter(
            database,
            'CartProduct',
            (CartProduct item) => <String, Object?>{
                  'id': item.id,
                  'productId': item.productId,
                  'variantId': item.variantId,
                  'quantity': item.quantity
                },
            changeListener),
        _cartProductUpdateAdapter = UpdateAdapter(
            database,
            'CartProduct',
            ['id'],
            (CartProduct item) => <String, Object?>{
                  'id': item.id,
                  'productId': item.productId,
                  'variantId': item.variantId,
                  'quantity': item.quantity
                },
            changeListener),
        _cartProductDeletionAdapter = DeletionAdapter(
            database,
            'CartProduct',
            ['id'],
            (CartProduct item) => <String, Object?>{
                  'id': item.id,
                  'productId': item.productId,
                  'variantId': item.variantId,
                  'quantity': item.quantity
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CartProduct> _cartProductInsertionAdapter;

  final UpdateAdapter<CartProduct> _cartProductUpdateAdapter;

  final DeletionAdapter<CartProduct> _cartProductDeletionAdapter;

  @override
  Future<List<CartProduct>> findAllCartProducts() async {
    return _queryAdapter.queryList('SELECT * FROM CartProduct',
        mapper: (Map<String, Object?> row) => CartProduct(
            row['id'] as int,
            row['productId'] as int,
            row['variantId'] as int,
            row['quantity'] as int));
  }

  @override
  Stream<CartProduct?> findCartProductById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM CartProduct WHERE id= ?1',
        mapper: (Map<String, Object?> row) => CartProduct(
            row['id'] as int,
            row['productId'] as int,
            row['variantId'] as int,
            row['quantity'] as int),
        arguments: [id],
        queryableName: 'CartProduct',
        isView: false);
  }

  @override
  Stream<CartProduct?> findCartProductByProductId(int productId) {
    return _queryAdapter.queryStream(
        'SELECT * FROM CartProduct WHERE productId = ?1',
        mapper: (Map<String, Object?> row) => CartProduct(
            row['id'] as int,
            row['productId'] as int,
            row['variantId'] as int,
            row['quantity'] as int),
        arguments: [productId],
        queryableName: 'CartProduct',
        isView: false);
  }

  @override
  Future<void> addCartProduct(CartProduct cartProduct) async {
    await _cartProductInsertionAdapter.insert(
        cartProduct, OnConflictStrategy.abort);
  }

  @override
  Future<List<int>> addCartProducts(List<CartProduct> cartProducts) {
    return _cartProductInsertionAdapter.insertListAndReturnIds(
        cartProducts, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateCartProduct(CartProduct cartProduct) async {
    await _cartProductUpdateAdapter.update(
        cartProduct, OnConflictStrategy.abort);
  }

  @override
  Future<int> updateCartProducts(List<CartProduct> cartProucts) {
    return _cartProductUpdateAdapter.updateListAndReturnChangedRows(
        cartProucts, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteCartProduct(CartProduct cartProduct) async {
    await _cartProductDeletionAdapter.delete(cartProduct);
  }

  @override
  Future<int> deleteCartProducts(List<CartProduct> cartProducts) {
    return _cartProductDeletionAdapter
        .deleteListAndReturnChangedRows(cartProducts);
  }
}
