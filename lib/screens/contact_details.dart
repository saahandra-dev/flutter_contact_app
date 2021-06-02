import 'package:contact_app/screens/add_edit_screen.dart';
import 'package:flutter/material.dart';

class MyDetailPage extends StatelessWidget {
  MyDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[               
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 130,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Simi Pam',
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Phone',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          '08038608713',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.phone,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Email',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          'pam@yahoo.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.mail,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Gender',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Female',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.face,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Address',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Container(
                          height: 90,
                          width: 260,
                          child: Text(
                          '17, Akinrinlo Street, Ikeja, Lagos, Nigeria.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.location_on
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.phone
                        ),
                        SizedBox(width: 45),
                        Icon(
                          Icons.chat_bubble_rounded,
                          color: Colors.black                        
                        ),
                        SizedBox(width: 45),
                        FloatingActionButton(
                          elevation: 14,
                          backgroundColor: Colors.black,
                          foregroundColor: Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          tooltip: 'Edit Todo',
                          child: Icon(
                            Icons.edit,
                            size: 34
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AddEditContact()),
                            );
                          }
                        ),
                        SizedBox(width: 45),
                        Icon(
                          Icons.group
                        ),
                        SizedBox(width: 45),
                        Icon(
                          Icons.person
                        ),
                      ],
                    ),
                  ],
                ),
              ),
  );
}