import '../databaseObj/scanDBGen.dart';
import '../../businessObj/scan.dart';
import '../../businessObj/businessObj.dart';


class ScanGen extends BusinessObj
{
  ScanDBGen get _localDbObj => dbObj as ScanDBGen ;

  ScanGen(super.dbObj);

  static const String TABLE_NAME = "scan";
  static const String COLUMN_ID = "id";
  static const String COLUMN_ISBN = "isbn";
  static const String COLUMN_BLOB = "blob";
  static const String COLUMN_REMARK = "remark";



  String get isbn => _localDbObj.isbn;
  String get blob => _localDbObj.blob;
  String get remark => _localDbObj.remark;


  set isbn(String value)
  {
    _localDbObj.isbn = value;
  }
  set blob(String value)
  {
    _localDbObj.blob = value;
  }
  set remark(String value)
  {
    _localDbObj.remark = value;
  }


  static Scan newObj(){
    ScanDBGen objDb = ScanDBGen();
    return objDb.newObj();
  }

  static Future<Scan> openObj(int id){
    ScanDBGen objDb = ScanDBGen();
    return objDb.open(id);
  }

  static Future<Scan> fromMap(Map<String,Object?>map){
    ScanDBGen objDb = ScanDBGen();
    return objDb.fromMap(map);
  }

  @override
  Scan clone() {
    Scan result = ScanGen.newObj(); 

    super.cloneDB(result._localDbObj);
    
    return result ; 
  }

}