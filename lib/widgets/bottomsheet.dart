import 'package:flutter/material.dart';

Widget bottomSheet() {
  return Container(
    height: 100.0,
    width: double.infinity,
    margin: EdgeInsets.all(20.0),
    child: Column(
      children: [
      Text('Choose a profile photo',
      style: TextStyle(
        fontSize: 20.0,
      )
      ),
      SizedBox(height: 10.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
                primary: Colors.teal,
          ),
          onPressed: () {}, 
          icon: Icon(Icons.camera), 
          label: Text('Camera')
        ),
        SizedBox(width: 10.0,),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
                primary: Colors.teal,
          ),
          onPressed: () {}, 
          icon: Icon(Icons.image), 
          label: Text('Gallery')
        )
      ],)
    ],)
  );
}
