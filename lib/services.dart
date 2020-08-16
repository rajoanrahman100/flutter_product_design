
import 'package:flutter/material.dart';
import 'package:flutterproductdesign/category.dart';

class Service extends StatelessWidget {

  const Service({
    Key key,
    // It means we have  to add category
    this.category,this.press,
  }) : super(key: key);

  final Categoryy category;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            FadeInImage.assetNetwork(
              height: 70.0,
              placeholder: "images/spinner.gif",
              image: category.image,
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(category.title)
          ],
        ),
      ),
    );
  }
}
