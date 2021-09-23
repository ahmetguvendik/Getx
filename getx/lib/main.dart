
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:getx/graf.dart';
import 'package:getx/history.dart';
import 'package:getx/veriekleme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.black)
        ),
        home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  Widget secilenEkran = History();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Spor"),
        ),
      body: secilenEkran,
      floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.black,
       onPressed: (){
         Get.to(VeriEkleme());
       },child: Icon(Icons.plus_one),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height/12,
        backgroundColor: Colors.black,
        activeColor: Colors.red,
        inactiveColor: Colors.white,
        gapLocation: GapLocation.center,
        icons: [Icons.show_chart,Icons.history], activeIndex: index, onTap: (int ) {
          setState(() {
            index = int;
            if(index==1){
              secilenEkran=History();
            }
            else{
              secilenEkran=Graf();
            }
          });
      },

     ),
    );
  }
}
