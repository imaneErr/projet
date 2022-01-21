
import 'package:email_password_login/pages/trainners.dart';
import 'package:email_password_login/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';

import 'blogs.dart';
import 'cousesHome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade900 ,
        title: const Text('Home'),
      ),

      body: new Center(

        child: new ListView(

          children: [
            Image.asset('assets/images/Title.PNG',
              width: 600.0,
              height: 100.0,
              fit: BoxFit.contain,),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>CoursesHome()));
              },

              child: Image.asset('assets/images/courh.PNG',
                width: 600.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>Trainers()));
              },
              child: Image.asset('assets/images/no.PNG',
                width: 600.0,
                height: 165.0,
                fit: BoxFit.cover,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>Blogs()));
              },
              child: Image.asset('assets/images/blogs.jpg',
                width: 600.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),


          ],
)

       ),
    );
  }
}

