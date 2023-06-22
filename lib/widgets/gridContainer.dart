import 'package:flutter/material.dart';

class SecondContainer extends StatelessWidget {
  final String name;
  final String coursename;
  final String filename;
  final IconData icon;
  const SecondContainer({
    Key? key,
    required this.name,
    required this.coursename,
    required this.icon,
    required this.filename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1, 
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFB20CE1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 4.0,
            left: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  icon: new Icon(Icons.cast_for_education),
                  color: Colors.white,
                  iconSize: 20,
                //  highlightColor: Colors.pink,
                  onPressed: () {}),
              Padding(
                padding: const EdgeInsets.only(top: 1, left: 8),
                child: Text(name,
                    style: TextStyle(color: Colors.white, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(coursename,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
