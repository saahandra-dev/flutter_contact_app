import 'dart:io';

import 'package:contact_app/reusable/reusable_textfield.dart';
import 'package:contact_app/widgets/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:image_picker/image_picker.dart';

class AddEditContact extends StatefulWidget {
  const AddEditContact({ Key key }) : super(key: key);

  @override
  _AddEditContactState createState() => _AddEditContactState();
}

class _AddEditContactState extends State<AddEditContact> {
  int _value = 1;
  PickedFile _imageFile;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50.0),
                  splashColor: Colors.grey,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 35.0
                    ),
                ),
              ),
              SizedBox(height: 20.0,),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: _imageFile == null 
                      ? AssetImage("assets/images/murano.jpeg") 
                      : FileImage(File(_imageFile.path)),
                      backgroundColor: Colors.orange,
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context, 
                            builder: ((builder) => bottomSheet())
                            );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.white,
                              width: 3
                            ),
                            color: Colors.teal,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                      )
                    ),
                  ],),
                  SizedBox(height:20.0),

                  Row(
                  children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(35.0, 0.0, 45.0, 0.0),
                      child: Row(
                        children: [
                          Radio(
                            splashRadius: 3.0,
                            activeColor: Colors.teal,
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            },
                          ),
                          SizedBox(width: 10.0,),
                          Text('Male',
                          style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                    Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        children: [
                          Radio(
                            splashRadius: 3.0,
                            activeColor: Colors.teal,
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value;                      
                              });
                            }
                          ),
                          SizedBox(width: 10.0,),
                          Text('Female',
                          style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                ],),

                SizedBox(height: 20.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                      child: ReusableTextField(
                        label: 'Firstname', 
                        icon: Icon(Icons.person)
                        )
                    ),
                    SizedBox(width: 20.0,),
                    Flexible(
                      child: ReusableTextField(
                        label: 'Lastname', 
                        icon: Icon(Icons.person)
                        ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                ReusableTextField(
                  label: 'Phone', 
                  icon: Icon(Icons.phone)
                  ),
                SizedBox(height: 20.0,),
              
                ReusableTextField(
                  label: 'Email Address', 
                  icon: Icon(Icons.email)
                  ),
                SizedBox(height: 20.0,),
                ReusableTextField(
                  label: 'Address', 
                  icon: Icon(Icons.home))
            ],),
          ),
        ),
      ),
    );
  }
}




