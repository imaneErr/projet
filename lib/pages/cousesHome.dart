import 'package:email_password_login/global/global.parameter.dart';
import 'package:email_password_login/widgets/nav-drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900 ,
          title: const Text('Courses'),
        ),
        body: Container(

          padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CustomScrollView(

            slivers: [

              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  childAspectRatio: 1,
                ),
                delegate: SliverChildBuilderDelegate(
                      (context, index) => Container(
                    margin: EdgeInsets.all(10.0),
                 child: InkWell(
                   onTap: ()=>{
                     Navigator.pop(context),
                     Navigator.pushNamed(context, "${GlobalParameter.courses[index]}"),
                   },
                   child: Container(
                     decoration: BoxDecoration(

                       color: Colors.grey,


                     ),

                     child: Container(
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage("${GlobalParameter.images[index]}"),
                           fit: BoxFit.cover,
                         ),
                       ),

                    child: Column(
                      children: [
                        FractionallySizedBox(
                          widthFactor: 1,

                          child: SizedBox(
                            height: 30,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Center(
                                child: Text('${GlobalParameter.titles[index]}',
                                style: TextStyle(color: Colors.white,),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                     ),
                   ),
                 ),

                  ),

                  childCount: 6,),
              )
            ],
          ),
        ));


  }
}
