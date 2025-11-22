import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'library_app.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        fullName TEXT NOT NULL,
        nik TEXT NOT NULL UNIQUE,
        email TEXT NOT NULL UNIQUE,
        address TEXT NOT NULL,
        phoneNumber TEXT NOT NULL,
        username TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE transactions(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        userId INTEGER NOT NULL,
        bookTitle TEXT NOT NULL,
        bookGenre TEXT NOT NULL,
        bookCover TEXT NOT NULL,
        bookSynopsis TEXT NOT NULL,
        pricePerDay REAL NOT NULL,
        borrowerName TEXT NOT NULL,
        borrowDuration INTEGER NOT NULL,
        startDate TEXT NOT NULL,
        totalCost REAL NOT NULL,
        status TEXT NOT NULL DEFAULT 'active',
        FOREIGN KEY (userId) REFERENCES users (id)
      )
    ''');
  }

  Future<int> insertUser(Map<String, dynamic> user) async {
    Database db = await database;
    return await db.insert('users', user);
  }

  Future<Map<String, dynamic>?> getUser(
    String emailOrNik,
    String password,
  ) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'users',
      where: '(email = ? OR nik = ?) AND password = ?',
      whereArgs: [emailOrNik, emailOrNik, password],
    );
    return results.isNotEmpty ? results.first : null;
  }

  Future<bool> isEmailExists(String email) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );
    return results.isNotEmpty;
  }

  Future<bool> isUsernameExists(String username) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'username = ?',
      whereArgs: [username],
    );
    return results.isNotEmpty;
  }

  Future<int> insertTransaction(Map<String, dynamic> transaction) async {
    Database db = await database;
    return await db.insert('transactions', transaction);
  }

  Future<List<Map<String, dynamic>>> getTransactionsByUserId(int userId) async {
    Database db = await database;
    return await db.query(
      'transactions',
      where: 'userId = ?',
      whereArgs: [userId],
      orderBy: 'id DESC',
    );
  }

  Future<Map<String, dynamic>?> getTransactionById(int id) async {
    Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      'transactions',
      where: 'id = ?',
      whereArgs: [id],
    );
    return results.isNotEmpty ? results.first : null;
  }

  Future<int> updateTransaction(
    int id,
    Map<String, dynamic> transaction,
  ) async {
    Database db = await database;
    return await db.update(
      'transactions',
      transaction,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> cancelTransaction(int id) async {
    Database db = await database;
    return await db.update(
      'transactions',
      {'status': 'cancelled'},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
