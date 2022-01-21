import 'package:email_password_login/global/global.parameter.dart';
import 'package:email_password_login/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';

import 'ProfileBlogs.dart';

class Blogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900 ,
          title: const Text('Blogs'),
        ),
        body: CustomScrollView(
          slivers: [

            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                childAspectRatio: 0.7,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),

                  decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    border: Border.all(color: Colors.pink.shade900),
                  ),





                      child: Column(
                        children: [

                             Image.asset('${GlobalParameter.blogs[index].profile}',
                              width: 260.0,
                              height: 70.0,
                              fit: BoxFit.cover,

                             ),
                          SizedBox(height: 4.0,),

                          Text(
                            '${GlobalParameter.blogs[index].date}',
                            style: TextStyle(fontSize: 8.0,color: Colors.black),
                          ),
                          SizedBox(
                            width: 200,
                            child: Column(

                              children: [
                                SizedBox(height: 10.0,),
                                Text(
                                  '${GlobalParameter.blogs[index].title}',
                                  style: TextStyle(fontSize: 17.0,fontStyle: FontStyle.italic,color:Colors.cyan[600] ),
                                ),

                                SizedBox(height: 10,),
                                Text(
                                  '${GlobalParameter.blogs[index].description}',
                                  style: TextStyle(fontSize: 12.0,color: Colors.black),
                                ),
                                SizedBox(height: 10.0,),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(

                                    children: [

                                      Icon(Icons.account_circle_outlined,size: 15,color: Colors.grey,),
                                      Text(
                                        '${GlobalParameter.blogs[index].writer}',
                                        style: TextStyle(fontSize: 12.0,color: Colors.grey),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),



                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(

                          height: 20,
                          child: ElevatedButton(
                            onPressed: ()=>{
                            //  Navigator.pop(context),
                            //  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileBlogs(GlobalParameter.blogs[index].id) ) )
                            },
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all<Color>(Colors.cyan[200]) ,
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),

                                  )
                              ),

                            ),
                            child: Text(
                              'More',
                              style: TextStyle(color: Colors.white,fontSize: 15),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


//


                ),
                childCount: 4, ),
            )
          ],
        )
    );
  }
}