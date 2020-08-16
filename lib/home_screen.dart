
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'user_profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("HomeScreen",style: TextStyle(
          color: Colors.deepOrange
        ),),

      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left:10.0,right: 10.0,top: 10.0),
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                    width: 80.0,
                    height: 80.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/users.jpg")
                        )
                    )
                ),

                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  height: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Md. Rejoan Rahman"),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Flat No: 10/A"),
                    ],
                  ),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 5.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeContainer(imageUrl: "images/visitor.png",tittle: "Visitors",callback: (){
                 // print("OK");
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UsersProfile()));
                },),

                SizedBox(
                  width: 5.0,
                ),
                HomeContainer(imageUrl: "images/workers.png",tittle: "Visitors",),

                SizedBox(
                  width: 5.0,
                ),
                HomeContainer(imageUrl: "images/visitor.png",tittle: "Visitors",),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 5.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeContainer(imageUrl: "images/visitor.png",tittle: "Visitors",),

                SizedBox(
                  width: 5.0,
                ),
                HomeContainer(imageUrl: "images/workers.png",tittle: "Visitors",),

                SizedBox(
                  width: 5.0,
                ),
                HomeContainer(imageUrl: "images/visitor.png",tittle: "Visitors",),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 5.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeContainer(imageUrl: "images/visitor.png",tittle: "Visitors",),

                SizedBox(
                  width: 5.0,
                ),
                HomeContainer(imageUrl: "images/workers.png",tittle: "Visitors",),

                SizedBox(
                  width: 5.0,
                ),
                HomeContainer(imageUrl: "images/visitor.png",tittle: "Visitors",),
              ],
            ),
          )
        ],
      )

    );
  }
}

class HomeContainer extends StatelessWidget {
   HomeContainer({
    Key key,this.imageUrl,this.tittle,this.callback
  });

 final String imageUrl;
 final String tittle;
 VoidCallback callback;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(onTap: callback,child: Image.asset(imageUrl,height: 80.0,)),
            Text(tittle)
          ],
        ),
      ),
    );
  }
}
