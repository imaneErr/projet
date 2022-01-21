
import 'package:email_password_login/global/global.parameter.dart';
import 'package:email_password_login/pages/Details.dart';
import 'package:email_password_login/widgets/nav-drawer.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Trainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900 ,
          title: const Text('Trainers'),
        ),
        body: CustomScrollView(
          slivers: [

            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,

                childAspectRatio: 2.7,
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

                Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:AssetImage("${GlobalParameter.trainners[index].profile}"),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                        children: [
                          for (var i = 0; i < GlobalParameter.trainners[index].score ; i++) Icon(Icons.star, size:18,color: Colors.yellow[600],) ,
                          for(var i = 0; i < (5-GlobalParameter.trainners[index].score) ; i++) Icon(Icons.star, size:18,color: Colors.black,) ,
                        ],
                        ),

                      ],
                    ),
                    SizedBox(width: 10.0,),
                    SizedBox(
                      width: 200,
                      child: Column(

                        children: [

                          Text(
                            '${GlobalParameter.trainners[index].name}',
                            style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.normal,),
                          ),
                          SizedBox(height: 10,),
                          Positioned(

                            child: Text(
                              '${GlobalParameter.trainners[index].job}',
                              style: TextStyle(fontSize: 12.0,color: Colors.grey),
                            ),
                          ),


                        ],
                      ),
                    ),

                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(

                    height: 20,
                    child: ElevatedButton(
                      onPressed: ()=>{
                        Navigator.pop(context),
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen(GlobalParameter.trainners[index].id) ) )
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
                        'Details',
                        style: TextStyle(color: Colors.white,fontSize: 15),

                      ),
                    ),
                  ),
                ),
              ],
            ),


//


                ),
                childCount: 5, ),
            )
          ],
        ));
  }
}
