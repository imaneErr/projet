
import 'package:email_password_login/screens/login_screen.dart';

import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(


        child: Container(
          color: Colors.pink[900],

          child: ListView(


            children: <Widget>[
              DrawerHeader(

                decoration: BoxDecoration(

                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/body.PNG'))), child: null,
              ),
              ListTile(
                leading: Icon(Icons.home,color: Colors.white,),

                title: Text('Home',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                onTap: () => {

                  Navigator.pushReplacementNamed(context, "/HomePage")
                },
              ),
              Divider(
                color: Colors.white,
                thickness: 2.5,
              ),
              ListTile(
                leading: Icon(Icons.sports_handball,color: Colors.white,),

                title: Text('Courses',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                onTap: () => {

                  Navigator.pushReplacementNamed(context, "/CoursesHome")
                },
              ),
              Divider(
                color: Colors.white,
                thickness: 2.5,
              ),
              ListTile(
                leading: Icon(Icons.people_alt,color: Colors.white,),
                title: Text('Trainers',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                onTap: () => {
                  Navigator.pushReplacementNamed(context, "/Trainers")
                },
              ),

              Divider(
                color: Colors.white,
                thickness: 2.5,
              ),
              ListTile(
                leading: Icon(Icons.notes,color: Colors.white,),
                title: Text('Blogs',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                onTap: () => {
                  Navigator.pushReplacementNamed(context, "/Blogs")
                },
              ),

              Divider(
                color: Colors.white,
                thickness: 2.5,
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app,color: Colors.white,),
                title: Text('Logout',
                  style: TextStyle(color: Colors.white,fontSize: 20),),
                onTap: () => {
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      )
                },
              ),
              Divider(
                color: Colors.white,
                thickness: 2.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}