import 'package:email_password_login/model/blogs.model.dart';
import 'package:email_password_login/pages/course1.dart';
import 'package:email_password_login/pages/course2.dart';
import 'package:email_password_login/pages/course3.dart';
import 'package:email_password_login/pages/course4.dart';
import 'package:email_password_login/pages/course5.dart';
import 'package:email_password_login/pages/course6.dart';
import 'package:email_password_login/pages/cousesHome.dart';
import 'package:email_password_login/pages/trainners.dart';
import 'package:email_password_login/pages/video.dart';
import 'package:email_password_login/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitnes',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
       routes: {

        
        '/Trainers':(context)=>Trainers(),
        '/Video':(context)=>Video(),
     


        '/CoursesHome' :(context)=>CoursesHome(),
        '/Course1' :(context)=>Course1(),
        '/Course2' :(context)=>Course2(),
        '/Course3' :(context)=>Course3(),
        '/Course4' :(context)=>Course4(),
        '/Course5' :(context)=>Course5(),
        '/Course6' :(context)=>Course6(),
      },
      home: LoginScreen(),
    );
  }
}
