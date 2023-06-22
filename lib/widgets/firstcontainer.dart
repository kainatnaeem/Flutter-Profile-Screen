import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
  }) : super(key: key);
//Ktech
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.43,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0)),
        color: Color(0xFFB20CE1),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Profile",
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.029,
        ),
        CircleAvatar(
            backgroundImage: AssetImage('images/img1.jpg'), radius: 50),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text("Ktech Marketing",
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.gps_fixed_outlined, size: 20, color: Colors.white),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Text("Pakistan",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ]),
    );
  }
}
