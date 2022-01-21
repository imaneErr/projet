
import 'package:email_password_login/global/global.parameter.dart';
import 'package:email_password_login/widgets/nav-drawer.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Course3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink.shade900 ,
          title: const Text('Course WEIGHT LIFTING'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                    itemExtent: 120,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(5.0),
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


                          ),
                        ),
                      ),
                    ),
                    itemCount: 6),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,

                childAspectRatio: 1.5,
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Container(
                  margin: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Center(
                          child: Text('Part '+'${index+1}',
                            style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                        ),
                      ),
                      YoutubePlayer(
                        controller: GlobalParameter.controllerLifting[index],
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.cyan[200],
                      ),
                    ],
                  ),
                ),
                childCount: 4, ),
            )
          ],
        ));
  }
}
