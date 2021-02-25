import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';



class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final mobileController=TextEditingController();
  final feedbackController=TextEditingController();


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
      type: AlertType.success,
      title: "Your Feedback Is Saved..!!",
      // desc: "title:${data['title']}",
      buttons: [
        DialogButton(
          child: Text(
            "Ok",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
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
    nameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    feedbackController.dispose();


    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          children:[ Container(

            child:Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 0, 50),
                    child: Text("CONTACT US",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,),),
                  ),
                  Container(

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
                    child: Form(

                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                                child: TextFormField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    hintText: 'Put Your Name Here ...',

                                  ),
                                  validator: (value){
                                    if(value.isEmpty){
                                      return "Please Enter Your Name";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Put Your Email Here ...',

                                  ),
                                  validator: (value){
                                    if(value.isEmpty){
                                      return "Please Enter Your Email";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                                child: TextFormField(
                                  controller: mobileController,
                                  decoration: InputDecoration(
                                    labelText: 'Mobile No',
                                    hintText: 'Put Your Mobile No Here ...',

                                  ),
                                  validator: (value){
                                    if(value.isEmpty){
                                      return "Please Enter Your Mobile No";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                                child: TextFormField(
                                  maxLines: 5,
                                  controller: feedbackController,
                                  decoration: InputDecoration(
                                    alignLabelWithHint: true,

                                    labelText: 'Feedback',
                                    hintText: 'Put Your Feedback Here ...',

                                  ),
                                  validator: (value){
                                    if(value.isEmpty){
                                      return "Please Enter Your Feedback";
                                    }
                                    return null;
                                  },
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 20, 8, 30),
                                child: FloatingActionButton.extended(
                                  // backgroundColor: const Color(0xff03dac6),
                                  foregroundColor: Colors.white,
                                  onPressed: () {

                                    if(_formKey.currentState.validate()){
                                      setState(() {
                                        print("state set");

                                        data={
                                          'name':nameController.text,
                                          'email':emailController.text,
                                          'mobile_no':mobileController.text,
                                          'feedback':feedbackController.text,
                                        };
                                      });

                                      postForm();
                                    }
                                  },
                                  icon: Icon(Icons.attach_file_outlined),
                                  label: Text('SUBMIT'),
                                ),
                              )
                            ],
                        )
                    ),
                  ),
                ],
              ),
            )
          ),],
        ),
      ),
    );
  }
}
