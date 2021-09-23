import 'package:get/get.dart';
import 'package:getx/record.dart';


class Controller extends GetxController{

  var records  = <Record>[

  ].obs;

  void addRecords(String kilo){
    records.add(Record(kilo: kilo  , dateTime: DateTime.now()));
}
  void recordsRemove(Record record){
    records.remove(record);
  }
}