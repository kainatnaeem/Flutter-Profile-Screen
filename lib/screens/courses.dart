import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String imageUrl;

  const Categories({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee), width: 2.0),
        color: Colors.white38,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: EdgeInsets.all(8),
      height: 60,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 60,
            child: Center(
                child: Image.asset(
              'images/' + imageUrl + ".png",
              width: 70,
              height: 50,
            )),
          ),
        ],
      ),
    );
  }
}

class HomeCategoryTitle extends StatelessWidget {
  const HomeCategoryTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Categories",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w300),
            ),
            Text(
              "See all",
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 208, 190, 33),
                  fontWeight: FontWeight.w100),
            )
          ],
        ));
  }
}
