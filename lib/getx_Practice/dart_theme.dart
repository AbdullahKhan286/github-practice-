import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'getxSM.dart';

class ThemeChange_Getx extends StatefulWidget {
  const ThemeChange_Getx({Key? key}) : super(key: key);

  @override
  State<ThemeChange_Getx> createState() => _ThemeChange_GetxState();
}

class _ThemeChange_GetxState extends State<ThemeChange_Getx> {
  final counter c1 = Get.put(counter());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GetX with ABDULLAH'),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(
                (){
                  return
                    Switch(value: c1.x.value, onChanged: (value){
                      c1.SetOpacity(value);
                    }, );
                }
            )
          ],
        ),
      ),
    );
  }
}

/*
children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Adjust the value as needed
              ),
              child: ListTile(
                title: Text('Single ListTile'),
                subtitle: Text('Subtitle for the single ListTile'),
                leading: Icon(Icons.star),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Get.bottomSheet(Container(
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Text('Dark Theme'),
                            subtitle: Text('Subtitle for the single ListTile'),
                            leading: Icon(Icons.star),
                            trailing: Icon(Icons.arrow_forward),
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0), // Adjust the value as needed
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0), // Adjust the value as needed
                          ),
                          child: ListTile(

                            title: Text('Light Theme'),
                            subtitle: Text('Subtitle for the single ListTile'),
                            leading: Icon(Icons.star),
                            trailing: Icon(Icons.arrow_forward),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                        )
                      ],
                    ),
                  ));
                },
              ),
            )
          ],
 */







// [
// Obx(() => Container(
// height: 200,
// width: 200,
// color: Colors.red.withOpacity(c1.x.value),
// )),
// Obx(() => Slider(
// value: c1.x.value,
// onChanged: (p) {
// c1.SetOpacity(p);
// })),
// ]