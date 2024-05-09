import 'scan.dart';
import '../generate/businessObj/scanListGen.dart';



class ScanList extends ScanListGen
{

  static Future<List<Scan>> getAll([String? order]){
    return ScanListGen.getAll(order: order);
  }

  static Future<List<Scan>> getQuery({String? order, String? where}){
    return ScanListGen.getQuery(order:order,where:where);
    
  } 

}