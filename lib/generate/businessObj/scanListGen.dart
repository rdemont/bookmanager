import '../../businessObj/scan.dart';
import '../../services/databaseService.dart';
import 'scanGen.dart';



class ScanListGen
{

  
  static Future<List<Scan>> getAll({String? order}){
    return DatabaseService.initializeDb().then((db) {
      return db.query(ScanGen.TABLE_NAME,orderBy: order??ScanGen.COLUMN_ID).then((raws) async {
        List<Scan> result = [];
        for (int i = 0 ; i< raws.length;i++)
        {
          result.add(await ScanGen.fromMap(raws[i]));
        }
        return result ; 
      });
    });
  }



  static Future<List<Scan>> getQuery({String? order, String? where}){
    return DatabaseService.initializeDb().then((db) {
      return db.query(ScanGen.TABLE_NAME,orderBy: order??ScanGen.COLUMN_ID, where: where).then((raws) async {
        List<Scan> result = [];
        for (int i = 0 ; i< raws.length;i++)
        {
          result.add(await ScanGen.fromMap(raws[i]));
        }
        return result ; 
      });
    });
  }

}