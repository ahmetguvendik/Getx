import 'package:freezed_annotation/freezed_annotation.dart';
part 'record.freezed.dart';
part 'record.g.dart';


@freezed
class Record with _$Record{


 factory Record({required String kilo,required DateTime dateTime})= _Record;

 factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}