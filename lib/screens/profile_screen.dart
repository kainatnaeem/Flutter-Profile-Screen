import 'package:eduprofileuibyktech/screens/responsive.dart';
import 'package:flutter/material.dart';
import '../widgets/buttons.dart';
import '../widgets/firstcontainer.dart';
import '../widgets/gridContainer.dart';
import 'courses.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Responsive(
        portrait: Column(children: [
          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
                                                  FirstContainer(),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.39,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonsContainer(
                          text1: "Requests",
                          text2: "230",
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        ButtonsContainer(
                          text1: "Accepted",
                          text2: "170",
                        ),
                      ])),
                      
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          SingleChildScrollView(
            child: GridView(
              shrinkWrap: true,
              children: [
                SecondContainer(
                  icon: Icons.cast_for_education,
                  name: "Course1",
                  coursename: "Digital\nMarketing",
                  filename: "Files",
                ),
                SecondContainer(
                  icon: Icons.money,
                  name: "Fee",
                  coursename: "SMM 350\nWEB 232",
                  filename: " ",
                ),
                SecondContainer(
                  icon: Icons.person,
                  name: "Profile",
                  coursename: "2 Steps\nLeft",
                  filename: " ",
                ),
                SecondContainer(
                  icon: Icons.cast_for_education,
                  name: "Course2",
                  coursename: "Web\nDevelopment",
                  filename: "Files",
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 8.0,
                mainAxisExtent: 140,
              ),
            ),
          ),
          Container(
            height: 80,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Categories(
                imageUrl: "flutter",
              ),
              Categories(
                imageUrl: "sql",
              ),
              Categories(
                imageUrl: "word",
              ),
              Categories(
                imageUrl: "js",
              ),
                Categories(
                imageUrl: "sql",
              ),
            ]),
          ),
        ]),
        landscape: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Profile",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
           SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: GridView(
                  shrinkWrap: true,
                  children: [
                    SecondContainer(
                      icon: Icons.cast_for_education,
                      name: "Course1",
                      coursename: "Digital\nMarketing",
                      filename: "Files",
                    ),
                    SecondContainer(
                      icon: Icons.money,
                      name: "Fee",
                      coursename: "SMM 350\nWEB 232",
                      filename: " ",
                    ),
                    SecondContainer(
                      icon: Icons.person,
                      name: "Profile",
                      coursename: "2 Steps\nLeft",
                      filename: " ",
                    ),
                    SecondContainer(
                      icon: Icons.cast_for_education,
                      name: "Course2",
                      coursename: "Web\nDevelopment",
                      filename: "Files",
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 8.0,
                    mainAxisExtent: 140,
                  ),
                ),
                
              ),
              
            ),
            Container(
            height: 80,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Categories(
                imageUrl: "flutter",
              ),
              Categories(
                imageUrl: "sql",
              ),
              Categories(
                imageUrl: "word",
              ),
              Categories(
                imageUrl: "js",
              ),
                Categories(
                imageUrl: "sql",
              ),
            ]),
          ),]),
        ),
      ),
    ));
  }
}
