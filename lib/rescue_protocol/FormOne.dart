import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ill_vent/dummy_data/UserInfoVariables.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(FormScreen(),);
}

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }
enum Suffer {type1, type2, type3, type4}
enum choose {no, yes}

class FormScreenState extends State<FormScreen> {
  bool show = false;
  int _counter = 0;
  @override
  void initState() {
    show = true;
    _counter = 0;
  }

  String? _first_name = " ";
  String? _sir_name = " ";
  String? _address = " ";
  String? _age = " ";
  String? _weight = " ";
  String? _height = " ";
  String? mention = "";
  String? comment_1 ="";
  String? yes = "";
  String? mention_ = "";
  String? mention_1 = "";
  String? mention_2 = "";
  String? mention_3 = "";
  String? mention_4 = "";
  String? mention_5 = "";
  String? mention_6 = "";
  String? mention_7 = "";
  bool check_1 = false;
  bool check_2 = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;
  bool check7 = false;
  bool check8 = false;
  bool check9 = false;
  bool check10 = false;
  bool check11 = false;
  bool check12 = false;
  bool check__1 = false;
  bool check__2 = false;
  bool check__3 = false;
  bool check__4 = false;
  bool check__5 = false;
  bool check__6 = false;
  bool check__7 = false;
  Suffer diabetes = Suffer.type1;
  choose c_1 = choose.no;
  choose c_2 = choose.no;
  choose c_3 = choose.no;
  BestTutorSite _gender = BestTutorSite.javatpoint;
  BestTutorSite high = BestTutorSite.javatpoint;
  BestTutorSite low = BestTutorSite.javatpoint;
  BestTutorSite dia = BestTutorSite.javatpoint;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildFistName() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'First Name...',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
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
      onFieldSubmitted: (String value){_first_name = value;},
      onSaved: (value) {
        _first_name = value!;
        print('$_first_name');
      },
    );
  }

  Widget _buildLastName() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Sir Name...',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
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
      onFieldSubmitted: (String value){_sir_name = value;},
      onSaved: (value) {
        _sir_name = value!;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Address...',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return ' this field cannot be null';
        }
      },
      onFieldSubmitted: (String value){_address = value;},
      onSaved: (value) {
        _address = value!;
      },
    );
  }

  Widget _buildAge() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Age...',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
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
      onFieldSubmitted: (String value){_age = value;},
      onSaved: (value) {
        _age = value!;
      },
    );
  }

  Widget _buildWeight() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Weight...',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
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
      onFieldSubmitted: (String value){_weight = value;},
      onSaved: (value) {
        _weight = value!;
      },
    );
  }

  Widget _buildHeight() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Height...',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      validator: (value) {
        if (value!.isEmpty) {
          return ' this field cannot be null';
        }
      },
      onFieldSubmitted: (String value){_height = value;},
      onSaved: (value) {
        _height = value!;
      },
    );
  }
  Widget _buildMention() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Mention What you had here....',labelStyle:TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      //maxLength: 10,
      onSaved: (value) {
        mention = value!;
      },
    );
  }
  Widget _buildComment() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Leave your comment...',labelStyle:TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      //maxLength: 10,
      onSaved: (value) {
        comment_1 = value!;
      },
    );
  }
  Widget _buildYes() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Mention What you had here.....',labelStyle:TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      //maxLength: 10,
      onSaved: (value) {
        yes = value!;
      },
    );
  }
  Widget _buildMention_() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Mention What you had here...',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          )),
      //maxLength: 10,
      onSaved: (value) {
        mention_ = value!;
      },
    );
  }
  Widget _buildMention_1() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'relationship degree',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      //maxLength: 10,
      onSaved: (value) {
        mention_1 = value!;
      },
    );
  }
  Widget _buildMention_2() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'relationship degree',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      onSaved: (value) {
        mention_2 = value!;
      },
    );
  }
  Widget _buildMention_3() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'relationship degree',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      onSaved: (value) {
        mention_3 = value!;
      },
    );
  }
  Widget _buildMention_4() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'relationship degree',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      onSaved: (value) {
        mention_4 = value!;
      },
    );
  }
  Widget _buildMention_5() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'relationship degree',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      onSaved: (value) {
        mention_5 = value!;
      },
    );
  }
  Widget _buildMention_6() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'relationship degree',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      onSaved: (value) {
        mention_6 = value!;
      },
    );
  }
  Widget _buildMention_7() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'relationship degree',
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      onSaved: (value) {
        mention_7 = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        color: Color(0xff3B41C9),
        child: ListView(children: [
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.assignment_outlined,
                  size: 60,
                  color: Colors.white,
                ),
                Text(
                  'Please fill up this',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Medical History Clipboard',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                _buildFistName(),
                SizedBox(
                  height: 10,
                ),
                _buildLastName(),
                SizedBox(
                  height: 10,
                ),
                _buildAddress(),
                SizedBox(
                  height: 10,
                ),
                _buildAge(),
                SizedBox(
                  height: 10,
                ),
                _buildWeight(),
                SizedBox(
                  height: 10,
                ),
                _buildHeight(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'Male',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.javatpoint,
                      groupValue: _gender,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            _gender = value;
                          });
                        }
                      }),
                ),
                ListTile(
                  title: const Text(
                    'Female',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.w3schools,
                      groupValue: _gender,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            _gender = value;
                          });
                        }
                      }),
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'Do you Suffer From High Blood Pressure?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.javatpoint,
                      groupValue: high,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            high = value;
                          });
                        }
                      }),
                ),
                ListTile(
                  title: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.w3schools,
                      groupValue: high,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            high = value;
                          });
                        }
                      }),
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'Do you Suffer From Low Blood Pressure?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.javatpoint,
                      groupValue: low,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            low = value;
                          });
                        }
                      }),
                ),
                ListTile(
                  title: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.w3schools,
                      groupValue: low,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            low = value;
                          });
                        }
                      }),
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'Do you Suffer From Diabetes?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.javatpoint,
                      groupValue: dia,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            dia = value;
                          });
                        }
                      }),
                ),
                ListTile(
                  title: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: BestTutorSite.w3schools,
                      groupValue: dia,
                      onChanged: (BestTutorSite? value) {
                        if (value != null) {
                          setState(() {
                            dia = value;
                          });
                        }
                      }),
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'Which type of diabetes you Suffer from?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text('Type 1 Diabetes',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  leading: Radio(
                      value: Suffer.type1,
                      groupValue: diabetes,
                      onChanged: (Suffer? value) {
                        if (value != null) {
                          setState(() {
                            diabetes = value;
                          }
                          );
                        }
                      }),
                ),
                ListTile(
                  title: const Text('Type 2 Diabetes',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  leading: Radio(
                      value: Suffer.type2,
                      groupValue: diabetes,
                      onChanged: (Suffer? value) {
                        if (value != null) {
                          setState(() {
                            diabetes = value;
                          }
                          );
                        }
                      }),
                ),
                ListTile(
                  title: const Text('Gestational Diabetes',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  leading: Radio(
                      value: Suffer.type3,
                      groupValue: diabetes,
                      onChanged: (Suffer? value) {
                        if (value != null) {
                          setState(() {
                            diabetes = value;
                          }
                          );
                        }
                      }
                  ),
                ),
                ListTile(
                  title: const Text('Prediabetes',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  leading: Radio(
                      value: Suffer.type4,
                      groupValue: diabetes,
                      onChanged: (Suffer? value) {
                        if (value != null) {
                          setState(() {
                            diabetes = value;
                          }
                          );
                        }
                      }
                  ),
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),

                SizedBox(
                  height: 5,
                ),

                Row(
                  children: [
                    Text(
                      'Have you ever had any of the following?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check1,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check1 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('Anemia',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check2,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check2 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('GERD',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),
                  ],
                ),
                Row(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            value: check3,
                            onChanged: (bool? value) {
                              if (value != null) {
                                setState(() {
                                  check3 = value;
                                }
                                );
                              }
                            },
                          ),
                          Text('Arthritis',style: TextStyle(fontSize: 15, color: Colors.white), ),
                        ],
                      ),
                      SizedBox(
                        width: 147,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            value: check4,
                            onChanged: (bool? value) {
                              if (value != null) {
                                setState(() {
                                  check4 = value;
                                }
                                );
                              }
                            },
                          ),
                          Text('Glaucoma',style: TextStyle(fontSize: 15, color: Colors.white), ),
                        ],
                      ),
                    ]),
                Row(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            value: check5,
                            onChanged: (bool? value) {
                              if (value != null) {
                                setState(() {
                                  check5 = value;
                                }
                                );
                              }
                            },
                          ),
                          Text('Asthma',style: TextStyle(fontSize: 15, color: Colors.white), ),
                        ],
                      ),
                      SizedBox(
                        width: 149,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            value: check6,
                            onChanged: (bool? value) {
                              if (value != null) {
                                setState(() {
                                  check6 = value;
                                }
                                );
                              }
                            },
                          ),
                          Text('Hepatitis',style: TextStyle(fontSize: 15, color: Colors.white), ),
                        ],
                      ),
                    ]),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check7,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check7 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('Cancer',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),
                    SizedBox(
                      width: 153,
                    ),

                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check8,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check8 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('HIV / AIDS',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check9,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check9 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('Emphysema',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),
                    SizedBox(
                      width: 118,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check10,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check10 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('Strokes',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check11,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check11 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('Disease',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),
                    SizedBox(
                      width: 148,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                          value: check12,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                check12 = value;
                              }
                              );
                            }
                          },
                        ),
                        Text('Other...',style: TextStyle(fontSize: 15, color: Colors.white), ),
                      ],
                    ),

                  ],
                ),
                _buildMention(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 300,
                      child: _buildComment(),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'Surgical History',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Do you have any surgery before?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text('No',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  leading: Radio(
                      value: choose.no,
                      groupValue: c_1,
                      onChanged: (choose? value) {
                        if (value != null) {
                          setState(() {
                            c_1 = value;
                          }
                          );
                        }
                      }
                  ),
                ),
                ListTile(
                  title: const Text('Yes',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  leading: Radio(
                      value: choose.yes,
                      groupValue: c_1,
                      onChanged: (choose? value) {
                        if (value != null) {
                          setState(() {
                            c_1 = value;
                          }
                          );
                        }
                      }
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'If Yes...*',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 300,
                      child: _buildYes(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text(
                      'Allergies',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'Are you allergic to anything?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: choose.no,
                      groupValue: c_2,
                      onChanged: (choose? value) {
                        if (value != null) {
                          setState(() {
                            c_2 = value;
                          });
                        }
                      }),
                ),

                ListTile(
                  title: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: choose.yes,
                      groupValue: c_2,
                      onChanged: (choose? value) {
                        if (value != null) {
                          setState(() {
                            c_2 = value;
                          });
                        }
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                _buildMention_(),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'Family History',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'Has anyone in your family had any of the following?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      //width: 150,
                    ),
                    Text(
                      '(Check if yes, and indicate the relationship to you)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: check__1,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            check__1 = value;
                          });
                        }
                      },
                    ),
                    Text(
                      'Cancer / Polyps',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: _buildMention_1(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: check__2,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            check__2 = value;
                          });
                        }
                      },
                    ),
                    Text(
                      'Anemia',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 83,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: _buildMention_2(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: check__3,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            check__3 = value;
                          });
                        }
                      },
                    ),
                    Text(
                      'Diabetes',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: _buildMention_3(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: check__4,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            check__4 = value;
                          });
                        }
                      },
                    ),
                    Text(
                      'Blood Clots',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: _buildMention_4(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: check__5,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            check__5 = value;
                          });
                        }
                      },
                    ),
                    Text(
                      'Heart Disease',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 37,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: _buildMention_5(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: check__6,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            check__6 = value;
                          });
                        }
                      },
                    ),
                    Text(
                      'Stroke',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 87,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: _buildMention_6(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: check__7,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            check__7 = value;
                          });
                        }
                      },
                    ),
                    Text(
                      'Others..',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: _buildMention_7(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  width: 450,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      'Are you takeing Aspirine daily?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: const Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: choose.no,
                      groupValue: c_3,
                      onChanged: (choose? value) {
                        if (value != null) {
                          setState(() {
                            c_3 = value;
                          });
                        }
                      }),
                ),
                ListTile(
                  title: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Radio(
                      value: choose.yes,
                      groupValue: c_3,
                      onChanged: (choose? value) {
                        if (value != null) {
                          setState(() {
                            c_3 = value;
                          });
                        }
                      }),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                              onPressed: () {
                                print('text button $_counter');
                                setState(() {
                                  _counter++;
                                });
                                var P = person(_first_name, _sir_name, _address,
                                    _age, _weight, _height);
                                print('text button $_first_name');
                                setState(() {
                                  show = false;
                                });
                                //Navigator.pop(context); //name of login page
                              },
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.purple,
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  )),
                              child: const Text('Continue')),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: 300,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: const[
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(4, 4)
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: QrImage(
                              data: "Name: $_first_name $_sir_name\n"
                                  "Address: $_address\n"
                                  "Age: $_age\n"
                                  "Weight: $_weight\n"
                                  "Height: $_height \n",
                              version: QrVersions.auto,
                              size: 300,
                            ),
                          ),
                          SizedBox(
                            child:show
                                ?Container(
                              color: Colors.blue,
                              height: 300,
                              width: 300,
                            ):null,
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          'take a screen shot and keep it with u',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 10,)
              ],
            ),
          ),
        ]),
      ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).pushNamed('Home');
              print('text button');
            },
            backgroundColor: Color(0xff6c63ff),
            tooltip: 'menu',
            child: const Icon(Icons.navigate_next,),
          ),
    ));
  }
}