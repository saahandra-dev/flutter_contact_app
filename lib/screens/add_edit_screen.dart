import 'package:contact_app/reusable/reusable_textfield.dart';
import 'package:contact_app/widgets/bottomsheet.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class AddEditContact extends StatefulWidget {
  const AddEditContact({ Key? key }) : super(key: key);

  @override
  _AddEditContactState createState() => _AddEditContactState();
}

class _AddEditContactState extends State<AddEditContact> {
  int _value = 2;

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
                child: GestureDetector(
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
                            
                            activeColor: Colors.teal,
                            value: 1,
                            groupValue: _value,
                            onChanged: (valueKey) {
                              setState(() {
                              //  _value = ValueKey;
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
                            activeColor: Colors.teal,
                            value: 2,
                            groupValue: _value,
                            onChanged: (valueKey) {}
                            
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
                      child: ReusableTextField(label: 'Firstname', icon: Icon(Icons.person, color: Colors.grey))
                    ),
                    SizedBox(width: 20.0,),
                    Flexible(
                      child: ReusableTextField(label: 'Lastname', icon: Icon(Icons.person, color: Colors.grey,)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                ReusableTextField(label: 'Phone', icon: Icon(Icons.phone)),
                SizedBox(height: 20.0,),
              
                ReusableTextField(
                  label: 'Email Address', 
                  icon: Icon(Icons.email, 
                  color: Colors.grey)
                  ),
                SizedBox(height: 20.0,),
                ReusableTextField(
                  label: 'Address', 
                  icon: Icon(Icons.home, color: Colors.grey,))
            ],),
          ),
        ),
      ),
    );
  }
}



