import 'package:email_password_login/global/global.parameter.dart';
import 'package:email_password_login/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:getwidget/getwidget.dart';

import 'blogs.dart';


class ProfileBlogs extends StatefulWidget {
  dynamic idProfile;
  ProfileBlogs(this.idProfile);
  @override
  State<ProfileBlogs> createState() => _ProfileBlogsState();
}

class _ProfileBlogsState extends State<ProfileBlogs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.pink.shade900 ,
            title: const Text('Details Blog'),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
              child: Column(
                children: [



                  Container(
                    child: Column(
                      children: [
                        Image.asset('${GlobalParameter.blogs[(widget.idProfile)-1].profile}}',
                          width: 260.0,
                          height: 70.0,
                          fit: BoxFit.cover,

                        ),

                        Text(
                          '${GlobalParameter.blogs[(widget.idProfile)-1].title}',
                          style: TextStyle(
                            color: Colors.black,

                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                      ],
                    ),

                    ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,

                    child: Text(
                    '  Contact Information',
                    style: TextStyle(
                      fontSize: 22,

                      color: Colors.cyan[600],

                    ),
                  ),),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.pink.shade900),

                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Email Address :',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey[500],

                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                          Align(
                            alignment: Alignment.topLeft,

                          child:Text(
                            ' ${GlobalParameter.trainners[(widget.idProfile)-1].email}',
                            style: TextStyle(
                              color: Colors.black,

                              fontSize: 18,
                              fontFamily: 'Nunito',
                            ),
                          ),

                          ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Phone Number :',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 17,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,

                          child:Text(
                            ' ${GlobalParameter.trainners[(widget.idProfile)-1].contact}',
                            style: TextStyle(
                              color: Colors.black,

                              fontSize: 18,
                              fontFamily: 'Nunito',
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Instagram Account  :',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 17,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ' ${GlobalParameter.trainners[(widget.idProfile)-1].adress}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Nunito',
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,

                    child: Text(
                      '  Description',
                      style: TextStyle(
                        fontSize: 22,

                        color: Colors.cyan[600],

                      ),
                    ),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.pink.shade900),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${GlobalParameter.trainners[(widget.idProfile)-1].description}',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,

                              fontFamily: 'Nunito',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}