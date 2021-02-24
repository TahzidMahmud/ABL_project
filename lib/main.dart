import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      '/':(context)=>MainApp(),
    },
    initialRoute: '/',
  ));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200],
                        gradient: LinearGradient(
                          stops: [0, 1],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors:
                          [Color(0xffffffff), Color(0xffe6e6e6)],
                        ),
                      boxShadow: [

                        BoxShadow(
                          color: Colors.grey[600],
                          offset: Offset(4.0,4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0,-4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),


                      ]
                    ),
                    child:
                      // elevation: 4,
                     Icon(Icons.android_outlined,size: 60,color: Colors.cyan[300],),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),

                ),
                Container(
                    height: 200,
                    width: 150,
                    // decoration: BoxDecoration(
                    //     color: Colors.grey[200],
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey[600],
                    //         offset: Offset(4.0,4.0),
                    //         blurRadius: 15.0,
                    //         spreadRadius: 1.0,
                    //       ),
                    //       BoxShadow(
                    //         color: Colors.white,
                    //         offset: Offset(-4.0,-4.0),
                    //         blurRadius: 15.0,
                    //         spreadRadius: 1.0,
                    //       ),
                    //
                    //     ]
                    // ),
                    child: Card(
                      elevation: 4,

                      child: Icon(Icons.android_outlined,size: 60,color: Colors.cyan[300],),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                    height: 200,
                    width: 150,
                    child: Card(
                      elevation: 4,

                      child: Icon(Icons.android_outlined,size: 60,color: Colors.cyan[300],),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                    )),
                Container(
                    height: 200,
                    width: 150,

                    child: Card(
                      elevation: 4,

                      child: Icon(Icons.android_outlined,size: 60,color: Colors.cyan[300],),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                    )),
              ],
            )
          ],
        ),
      ),

    );
  }
}


