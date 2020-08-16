import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutterproductdesign/categories.dart';
import 'package:flutterproductdesign/category.dart';

import 'fetchCategory.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int current = 0;
  List _images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Text("Rokkhi",style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 18.0,
          fontWeight: FontWeight.w500
        ),),
      ),
      body: Container(
        child: ListView(children: <Widget>[

            SizedBox(
              height: 250.0,
              width: 300.0,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 5.0,
                dotIncreasedColor: Colors.deepOrange,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  NetworkImage(    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
                  ),
                  NetworkImage(    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
                  ),
                  NetworkImage(    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
                  )
                ]
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Services : ",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  ),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text("see all > ",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ],
              ),
            ),

          SizedBox(
            height: 20.0,
          ),

          FutureBuilder(
            future: fetchCategories(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Categories(categories: snapshot.data);
              }else{
                return Center(child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Image.asset("images/loadingone.gif"),
                ));
              }

            },

          ),

          SizedBox(
            height: 15.0,
          ),

          FutureBuilder(
            future: fetchCategories(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Categories(categories: snapshot.data);
              }else{
                return Center(child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Image.asset("images/loadingone.gif"),
                ));
              }

            },

          ),

          SizedBox(
            height: 20.0,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Products : ",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                ),),
                Text("see all > ",style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                ),),
              ],
            ),
          ),


          SizedBox(
            height: 20.0,
          ),

          FutureBuilder(
            future: fetchCategories(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Categories(categories: snapshot.data);
              }else{
                return Center(child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Image.asset("images/loadingone.gif"),
                ));
              }

            },

          ),


          FutureBuilder(
            future: fetchCategories(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Categories(categories: snapshot.data);
              }else{
                return Center(child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Image.asset("images/loadingone.gif"),
                ));
              }

            },

          ),

          ],
        ),
      ),
    );
  }
}


