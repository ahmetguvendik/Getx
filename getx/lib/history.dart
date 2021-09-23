import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx/controller.dart';
import 'package:getx/record.dart';
import 'package:intl/intl.dart';

final Controller controller = Get.find();

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final Controller _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Obx(()=>ListView(
            physics: BouncingScrollPhysics(),
            children: _controller.records.map((record) => List(record: record,)).toList()
          ))
      ),
    );
  }
}

class List extends StatelessWidget {
 final Record record;
 List({required this.record});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          title: Center(child: Text(record.kilo,style: TextStyle(fontWeight: FontWeight.bold),)),
          leading: Text(DateFormat("EEE, MMM d").format(record.dateTime)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                  IconButton(onPressed: (){
                        controller.recordsRemove(record);
                  }, icon: Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
