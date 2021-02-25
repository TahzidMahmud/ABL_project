import 'package:flutter/material.dart';


class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: ListView(
          children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("ABOUT",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,),),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 85,
                  width: 352,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                        BoxShadow(
                          color: Colors.grey[500],
                          offset: Offset(5.0,5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                      ]
                  ),
                  child:
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                              child: Text("App Name",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 5),
                              child: Text("Abl Privilages",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                                style: TextStyle(color:Colors.black54,fontSize: 17,fontStyle: FontStyle.italic),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 85,
                  width: 352,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                        BoxShadow(
                          color: Colors.grey[500],
                          offset: Offset(5.0,5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                      ]
                  ),
                  child:
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                              child: Text("App Version",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 5),
                              child: Text("1.0.0",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                                style: TextStyle(color:Colors.black54,fontSize: 17,fontStyle: FontStyle.italic),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 85,
                  width: 352,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                        BoxShadow(
                          color: Colors.grey[500],
                          offset: Offset(5.0,5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                      ]
                  ),
                  child:
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                              child: Text("Email",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 5),
                              child: Text("info@amarbazarltd.com",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                                style: TextStyle(color:Colors.black54,fontSize: 17,fontStyle: FontStyle.italic),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 85,
                  width: 352,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                        BoxShadow(
                          color: Colors.grey[500],
                          offset: Offset(5.0,5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                      ]
                  ),
                  child:
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                              child: Text("Send Notification",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 5),
                              child: Text("Disable",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                                style: TextStyle(color:Colors.black54,fontSize: 17,fontStyle: FontStyle.italic),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 85,
                  width: 352,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                        BoxShadow(
                          color: Colors.grey[500],
                          offset: Offset(5.0,5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                      ]
                  ),
                  child:
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                              child: Text("Update App",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 5),
                              child: Text("Check For Update",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                                style: TextStyle(color:Colors.black54,fontSize: 17,fontStyle: FontStyle.italic),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 90,
                  width: 352,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5.0,-5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                        BoxShadow(
                          color: Colors.grey[500],
                          offset: Offset(5.0,5.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),

                      ]
                  ),
                  child:
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
                              child: Text("Copy Right",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 5, 5),
                              child: Text("Copyright ©2018 DotBdSolutions Developers All Rights Reserved",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.visible,
                                style: TextStyle(color:Colors.black54,fontSize: 17,fontStyle: FontStyle.italic),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}
