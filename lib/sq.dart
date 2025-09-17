import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initializeDb();
      return _db;
    } else {
      return _db;
    }
  }

  initializeDb() async {
    String mpath = await getDatabasesPath();
    String path = join(mpath, 'moaz.db');
    Database mydata = await openDatabase(
      path,
      onCreate: _onCreate,
      version: 1,
      onUpgrade: _onUpgrade,
    );
    return mydata;
  }

  _onUpgrade(Database db, int oldversion, int newversion) {

print("_onUpgrade @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");


  }





  _onCreate(Database db, int x) async {
    await db.execute('''
  
create table "nots" (
"id" INTEGER PRIMARY KEY AUTOINCREMENT  ,
"not" text not null 
)


''');

    print("Created database and table... @@@@@@@@@@@@@@@@@@@@@@@@@@@@");
  }

  readData(String sql) async {
    Database? mydata = await db;
    List<Map> response = await mydata!.rawQuery(sql);
    return response;
  }

  insertData(String sql) async {
    Database? mydata = await db;
    int response = await mydata!.rawInsert(sql);
    return response;
  }

  updetData(String sql) async {
    Database? mydata = await db;
    int response = await mydata!.rawUpdate(sql);
    return response;
  }

  deletData(String sql) async {
    Database? mydata = await db;
    int response = await mydata!.rawDelete(sql);
    return response;
  }
}
