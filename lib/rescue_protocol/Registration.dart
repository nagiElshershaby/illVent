import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<Registration> {
  String _name = "";
  String _email = "";
  String _password = "";
  String _phoneNumber = "";
  bool show = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  Widget _buildFistName() {
    return TextFormField(
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'First Name',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      //maxLength: 10,
      validator: (value) {
        if (value!.isEmpty) {
          return ' this field cannot be null';
        }
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildLastName() {
    return TextFormField(
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'Last Name',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      //maxLength: 10,
      validator: (value) {
        if (value!.isEmpty) {
          return ' this field cannot be null';
        }
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildemail() {
    return TextFormField(
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'E-mail Address',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,
          prefixIcon: Icon(Icons.email),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 'e-mail is Required';
        }
        return null;
      },
      onSaved: (value) {
        _email = value!;
      },
    );
  }

  Widget _buildpassword() {
    return TextFormField(
      obscureText: show,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'password',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,
          prefixIcon: const Icon(Icons.password_rounded),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              icon: Icon(show ? Icons.visibility_off : Icons.visibility)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 'password is Required';
        }
        if (value.length < 10) {
          return 'password must be 10 characters';
        }
      },
      onSaved: (value) {
        _password = value!;
      },
    );
  }

  Widget _buildrepassword() {
    return TextFormField(
      obscureText: show,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'Re-enter your password',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,
          prefixIcon: const Icon(Icons.password_rounded),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              icon: Icon(show ? Icons.visibility_off : Icons.visibility)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return 're-password is Required';
        }
        if (value.length < 10) {
          return 're-password must be 10 characters';
        }
      },
      onSaved: (value) {
        _password = value!;
      },
    );
  }

  Widget _buildYear() {
    return TextFormField(
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'Birth Year',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,
          // prefixIcon: Icon(Icons.phone),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      // maxLength: 11,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Year is Required';
        }
        return null;
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildMonth() {
    return TextFormField(
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'Month',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,

          // prefixIcon: Icon(Icons.phone),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      // maxLength: 11,
      validator: (value) {
        if (value!.isEmpty) {
          return ' this field cannot be null';
        }
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildDay() {
    return TextFormField(
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'Day',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,
          // prefixIcon: Icon(Icons.phone),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      // maxLength: 11,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Day is Required';
        }
        return null;
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildAge() {
    return TextFormField(
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.indigo,
          labelText: 'Age',labelStyle:TextStyle(color: Colors.white, fontSize: 15) ,

          // prefixIcon: Icon(Icons.phone),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      // maxLength: 11,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Age is Required';
        }
        return null;
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      backgroundColor: Color(0xff2B4587),
      body: ListView(
          children: [
            Container(height: 15,),

            Center(
              child: SizedBox(
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,

                  ),
                ),

              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              margin: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all( color: Color(0xff3B41C9) , width: 2),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      _buildFistName(),
                      SizedBox(
                        height: 10,
                      ),

                      _buildLastName(),
                      SizedBox(
                        height: 10,
                      ),


                      //geder
                      _buildemail(),
                      SizedBox(
                        height: 10,
                      ),


                      _buildpassword(),
                      SizedBox(
                        height: 10,
                      ),
                      _buildrepassword(),
                      SizedBox(
                        height: 10,
                      ),

                      _buildYear(),
                      SizedBox(height: 10,),
                      _buildMonth(),
                      SizedBox(
                        height: 10,
                      ),
                      _buildDay(),
                      SizedBox(
                        height: 10,
                      ),
                      _buildAge(),
                      SizedBox(
                        height:40,
                      ),
                      Center(
                        child: Container(
                          width: 150,
                          height: 50,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),

                            onPressed: () {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _formKey.currentState!.save();

                              showDialog(
                                context: context,
                                builder: (_) => const AlertDialog(
                                  content: Text('Your data submited successfully!'),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
    ));
  }
}