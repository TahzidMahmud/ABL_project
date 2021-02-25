import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:abl/static_pages/about_us.dart';
import 'package:http/http.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      '/':(context)=>MainApp(),
      '/about_us':(context)=>AboutUs(),
    },
    initialRoute: '/',
  ));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
          child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 180, 30),
                child: Text("ABL Privilege",
                  textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 200,
                    width: 150,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Icon(Icons.account_balance_outlined,size: 50,color: Colors.blueAccent,),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text("Nearest Express Shop",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                          ),
                          Text("Search Your Desired Shop Here",
                            textAlign: TextAlign.left,
                            style: TextStyle(color:Colors.black54,fontSize: 15,),),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Icon(Icons.bar_chart,size: 50,color: Colors.blueAccent,),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text("My Cashback",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                          ),
                          Text("Track Your Cashback Reports",
                            textAlign: TextAlign.left,
                            style: TextStyle(color:Colors.black54,fontSize: 15,),),

                        ],
                      ),
                    ),
                  ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Icon(Icons.assignment_ind_outlined,size: 50,color: Colors.blueAccent,),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text("Contact US",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                          ),
                          Text("You Can Contact UsFrom Here",
                            textAlign: TextAlign.left,
                            style: TextStyle(color:Colors.black54,fontSize: 15,),),

                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/about_us');
                    },
                    child: Container(
                      height: 200,
                      width: 150,
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Icon(Icons.announcement_outlined,size: 50,color: Colors.blueAccent,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text("About Us",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                            ),
                            Text("Information About This Application",
                              textAlign: TextAlign.left,
                              style: TextStyle(color:Colors.black54,fontSize: 15,),),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 150, 20),
              child: Text("ABL Information",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
              ),
            ),

              Row(
                  children: [
                    Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                            child: Image(image: AssetImage('assets/abl_logo.png')),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                                child: Text("Amar Bazar Limited",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                              ),
                              Text("Everything Online",
                                textAlign: TextAlign.left,
                                style: TextStyle(color:Colors.black54,fontSize: 17,),
                              ),

                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                                    const url = 'https://www.amarbazarltd.com/';
                                    if (await canLaunch(url)) {
                                      print("url loaded");
                                  await launch(url);
                                  } else {
                                  throw 'Could not launch $url';
                                  }},
                            child: Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(50.0),

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

                              Icon(Icons.arrow_forward_ios_outlined,size: 27,color: Colors.blueAccent,),


                            ),
                          ),
                        ],

                      ),
                    ),
                  ],
              )
            ],
          ),
        ),


    );
  }

  // launch(String url, {bool forceSafariVC}) {}
}


