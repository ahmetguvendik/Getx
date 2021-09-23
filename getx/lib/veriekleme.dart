import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getx/controller.dart';
import 'package:getx/main.dart';

class VeriEkleme extends StatelessWidget {  


  @override
  Widget build(BuildContext context) {
    final Controller _controller = Get.put(Controller());
    TextEditingController textcontroller= TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("KİLO"),
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 70,horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(hintText: "KİLONUZU GİRİNİZ"),
                controller: textcontroller,

              ),
            ),
            ButtonTheme(
              highlightColor: Colors.black,
              buttonColor: Colors.black,
              child: ElevatedButton(
                  onPressed: (){
                _controller.addRecords(textcontroller.text);
              }, child: Text("Kaydet")),
            )
          ],
        ),
      ),
    );
  }
}
