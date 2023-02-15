import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text App"),
        ),
        body: TextSample2(),
      ),
    );
  }
}

class TextSample2 extends StatefulWidget {

  @override
  _TextSample2 createState() => _TextSample2();
}

class _TextSample2 extends State<TextSample2> {
  bool checkbox1 = false,
      checkbox2 = false,
      checkbox3 = false;
  bool isbookchecked = false,
      istheatrechecked = false,
      ismusicchecked = false;
  bool isradioyellowchecked = false,
      isradiobluechecked = false,
      isradiogreenchecked = false;
  final _formKey = GlobalKey<FormState>();
  String? email, password, validatedemail, validatedpassword,commercial,validatedcommercial,validatedmale,validatedfemale,male,female;

  bool passenable = true;

  String radiocolors = "";

  late Color contcol = Colors.grey;
  String checktext = "Hobbies:";
  List<String> carbrands = ["Female", "Male"];
  String? selectedBrand,brand;
  String? selectedGender,gender;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  labelText: "Enter Email",
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty)
                    return "username field cannot be left blank";
                  else if (!val.contains(""))
                    return "username is not validated"; //val @ içeriyorsa true

                  return null;
                },
                onSaved: (val) {
                  email = val;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter Age",
                  labelText: "Enter Age",
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty)
                    return "Age field cannot be left blank";
                  else if (!val.contains(""))
                    return "Age is not validated"; //val @ içeriyorsa true

                  return null;
                },
                onSaved: (val) {
                  email = val;
                },
              ),
            ),
            DropdownButton(
              
              items: carbrands.map((aval){
                return DropdownMenuItem(
                    child:Text(aval),value: aval);
              }).toList(),
              onChanged: (val){
                setState(() {
                  selectedBrand=val!;
                });
              },
              value: selectedBrand, ),
            RadioListTile(selected: isradioyellowchecked,
              title: Text('Single'),
              value: 'RED', groupValue: radiocolors,
              onChanged: (vv) {
                setState(() {
                  isradioyellowchecked = true;
                  radiocolors = (vv as String?)!;
                  contcol = Colors.black;
                  selectedGender=vv;

                });
              },activeColor: Colors.black,),
            RadioListTile(selected: isradiobluechecked,
              title: Text('Married'),
              value:'Black', groupValue: radiocolors,
              onChanged: (vv) {
                setState(() {
                  isradiobluechecked = true;
                  radiocolors = (vv as String?)!;
                  contcol = Colors.black;
                  selectedGender=vv;

                });
              }, activeColor: Colors.black,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                obscureText:
                passenable, //if passenable == true, show **, else show password character
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    suffix: IconButton(
                        onPressed: () {
                          //add Icon button at end of TextField
                          setState(() {
                            //refresh UI
                            if (passenable) {
                              passenable = false;
                            } else {
                              passenable =
                              true; //if passenable == false, make it true
                            }
                          });
                        },
                        icon: Icon(passenable == true
                            ? Icons.remove_red_eye
                            : Icons.password))
//eye icon if passenable = true, else, Icon is *__
                ),
                validator: (val) {
                  if (val!.isEmpty)
                    return "Password field cannot be left blank";
                  else if (val.trim().length < 6)
                    return "Password length is invalid";
                  return null;
                },
                onSaved: (val) {
                  password = val;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                obscureText:
                passenable, //if passenable == true, show **, else show password character
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Enter Confirm Password",
                    labelText: "Enter Confirm Password",
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    suffix: IconButton(
                        onPressed: () {
                          //add Icon button at end of TextField
                          setState(() {
                            //refresh UI
                            if (passenable) {
                              passenable = false;
                            } else {
                              passenable =
                              true; //if passenable == false, make it true
                            }
                          });
                        },
                        icon: Icon(passenable == true
                            ? Icons.remove_red_eye
                            : Icons.password))
//eye icon if passenable = true, else, Icon is *__
                ),
                validator: (val) {
                  if (val!.isEmpty )
                    return "Password field cannot be left blank";
                  else if (val.trim().length < 6)
                    return "Girdiğiniz passwordler aynı değil!";
                  return null;
                },
                onSaved: (val) {
                  password = val;
                },
              ),
            ),
            CheckboxListTile(value: isbookchecked,
              onChanged: (bool? value) {
                setState(() {
                  isbookchecked = value!;
                  "Form Submitted";


                });
              },

              //onchanged
              title: Text('I agree to the terms and condition', style: TextStyle(color: Colors.black,),),
              activeColor: Colors.white70,
              checkColor: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),


            ElevatedButton(
              child: Text("Show User Information"),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  setState(() {
                    validatedemail = "Username,Pass:" + email!;
                    validatedpassword = password;


                  });
                }
              },
            ),
            SizedBox(height: 20,),
            Text("Form Submitted")



          ],
        ),
      ),
    );
  }
}