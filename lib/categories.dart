
import 'package:flutter/material.dart';
import 'package:flutterproductdesign/category.dart';
import 'package:flutterproductdesign/services.dart';


class Categories extends StatelessWidget {
  const Categories({
    Key key,
    this.categories,
  }) : super(key: key);

  final List<Categoryy> categories;

  @override
  Widget build(BuildContext context) {
    /*return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
              (index) => Service(
            category: categories[index],
          ),
        ),
      ),
    );*/

    return GridView(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //crossAxisCount: The number of children in the cross axis.
        crossAxisCount: 4,

        //childAspectRatio: 1.0,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      children: List.generate(categories.length,(index)=>Service(
        press: (){
          print(categories[index].title);
        },
        category: categories[index],
      ),)
    );
  }
}