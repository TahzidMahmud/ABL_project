import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _fKey = GlobalKey<FormState>();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  next(){
    Navigator.pushNamed(context, '/');
  }


  final url ='https://jsonplaceholder.typicode.com/posts';
  Map data;

  Future postForm() async{
    print("requesting");
    Response res = await post(url,body:data);
    print("request end");
    // data = jsonDecode(res.body);
    print(data);
    Alert(
      context: context,
      type: AlertType.error,
      title: "Serveice Not Implemented Yet..!!",
       // desc: "email:${data['email']} pass:${data['password']}",
      buttons: [
        DialogButton(
          child: Text(
            "Ok",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: ()  {
            Navigator.pop(context);
          next();
          },
          width: 120,
        )
      ],
    ).show();
    print("called");

  }
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    passwordController.dispose();
    emailController.dispose();



    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: ListView(
          children:[ Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: Center(child: Image(image: AssetImage('assets/abl_logo.png'))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
                child: Text("Login",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,),),
              ),
              Form(
                  key: _fKey,
                  child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
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
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Put Your Email Here ...',

                          ),
                          validator: (value){
                            if(value.isEmpty){
                              return "Please Enter Your email";
                            }
                            return null;
                          },
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
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
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: passwordController,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Put Your Password Here ...',

                          ),
                          validator: (value){
                            if(value.isEmpty){
                              return "Please Enter Your Password";
                            }
                            return null;
                          },
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FloatingActionButton.extended(
                      // backgroundColor: const Color(0xff03dac6),
                      foregroundColor: Colors.white,
                      onPressed: () {
                        print("statel**************");
                        if(_fKey.currentState.validate()){
                          setState(() {
                            // print("${_fKey.currentContext}");

                            data={

                              'email':emailController.text,
                              'password':passwordController.text,

                            };
                          });

                          postForm();
                        }
                      },
                      label: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20,),),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ],
        ),
      ),
    );
  }
}
