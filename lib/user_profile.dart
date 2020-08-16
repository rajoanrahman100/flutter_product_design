import 'dart:convert';
import 'package:flutterproductdesign/apis.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'home_screen.dart';

class UsersProfile extends StatefulWidget {
  @override
  _UsersProfileState createState() => _UsersProfileState();
}

class _UsersProfileState extends State<UsersProfile> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: firstNameController,
              decoration: InputDecoration(
                  focusColor: Colors.grey, hintText: 'Enter First Name:'),
            ),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(
                  focusColor: Colors.grey, hintText: 'Enter last Name:'),
            ),
            RaisedButton(
              onPressed: () {
                print(firstNameController.text);
                logIn(firstNameController.text, lastNameController.text);
              },
              child: Text("add data"),
            ),

            Card(
              elevation: 1.0
              ,
              child: Container(

                margin: EdgeInsets.all(8.0),
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images/users.jpg")
                            )
                        )
                    ),

                    Container(
                      height: 60,
                      child:Column(
                        children: <Widget>[
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Future<void> logIn(String firstName, String lastName) async {

    try {
      //const url = 'http://13.233.108.166:3000/api/v1/user/createNew';

      final response = await http.post(createNew,
          body: json.encode({'firstName': firstName, 'lastName': lastName}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

      print(response.statusCode);

      if(response.statusCode==201||response.statusCode==200){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));

      }

    } on Exception catch (exception) {
      // print('exception thrown');
      throw exception;
    } catch (error) {
      print("Error:"+error);
      throw error;
      // // print('logInError: $error');
    }
  }

}
