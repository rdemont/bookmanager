import '../../businessObj/scan.dart';
import '../businessObj/scanGen.dart';
import '../../databaseObj/databaseObj.dart';


class ScanDBGen extends DatabaseObj {
  
  String _isbn = '';
  String _blob = '';
  String _remark = '';



  ScanDBGen()
  {
    tableName = 'scan';
  }

  String get isbn => _isbn;
  String get blob => _blob;
  String get remark => _remark;



  set isbn(String value)
  {
    if (_isbn != value)
    {
      dataUpdated(); 
      _isbn = value;
    }
  }
  set blob(String value)
  {
    if (_blob != value)
    {
      dataUpdated(); 
      _blob = value;
    }
  }
  set remark(String value)
  {
    if (_remark != value)
    {
      dataUpdated(); 
      _remark = value;
    }
  }


  Future<Scan> open(int id)
  {
    return query(ScanGen.TABLE_NAME,where: ScanGen.COLUMN_ID+" = $id").then((obj)
    {
      Scan result = Scan(this);
      if (!obj.isEmpty)
      {
        fromMap(obj[0]);

      }
      return result ; 
    });
  }

  Scan newObj()
  {
    Scan result = Scan(this);
    return result ; 
  }


  @override
  Map<String, Object?> toMap() 
  {
    return{
      ScanGen.COLUMN_ISBN : _isbn,
      ScanGen.COLUMN_REMARK : _remark,

    };
    
  }


  Future<Scan> fromMap(Map<String,Object?> map)
  async {
    Scan result = Scan(this) ;
    super.id = map[ScanGen.COLUMN_ID] as int; 
    
    _isbn = (map[ScanGen.COLUMN_ISBN]??'') as String;
    _remark = (map[ScanGen.COLUMN_REMARK]??'') as String;



    return result; 

  }

 
  @override
  clone(DatabaseObj value)
  {
    super.clone(value);
    (value as ScanDBGen)._isbn = isbn;
    (value as ScanDBGen)._blob = blob;
    (value as ScanDBGen)._remark = remark;

  }
}