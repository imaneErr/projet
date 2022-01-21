// child: ListView.separated(
//
//     // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
//
//     itemCount: GlobalParameter.trainners.length,
//     itemBuilder: (BuildContext context, int index) {
//
//       return Container(
//           padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//         height: 130,
//           decoration: BoxDecoration(
//
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(10),
//                 topRight: Radius.circular(10),
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10)
//             ),
//             border: Border.all(color: Colors.pink.shade900),
//           ),
//
//
//
//             child: Column(
//               children: [
//
//                 Row(
//                   children: [
//                     Column(
//                       children: [
//                         Icon(Icons.person_rounded,size:50,),
//                         SizedBox(height: 10.0),
//                         Row(
//                         children: [
//                           for (var i = 0; i < GlobalParameter.trainners[index].score ; i++) Icon(Icons.star, size:20,color: Colors.yellow[600],) ,
//                           for(var i = 0; i < (5-GlobalParameter.trainners[index].score) ; i++) Icon(Icons.star, size:20,color: Colors.black,) ,
//                         ],
//                         ),
//
//                       ],
//                     ),
//                     SizedBox(width: 10.0,),
//                     SizedBox(
//                       width: 200,
//                       child: Column(
//
//                         children: [
//                           SizedBox(height: 20,),
//                           Text(
//                             '${GlobalParameter.trainners[index].name}',
//                             style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.normal,),
//                           ),
//                           SizedBox(height: 10,),
//                           Positioned(
//
//                             child: Text(
//                               '${GlobalParameter.trainners[index].description}',
//                               style: TextStyle(fontSize: 12.0,color: Colors.grey),
//                             ),
//                           ),
//                           SizedBox(height: 10,),
//
//                         ],
//                       ),
//                     ),
//
//                   ],
//                 ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: SizedBox(
//
//                     height: 20,
//                     child: ElevatedButton(
//                       onPressed: ()=>{
//
//                       },
//                       style: ButtonStyle(
//                         backgroundColor:MaterialStateProperty.all<Color>(Colors.cyan[200]) ,
//                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//
//                             RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25.0),
//
//                             )
//                         ),
//
//                       ),
//                       child: Text(
//                         'Details',
//                         style: TextStyle(color: Colors.white,fontSize: 15),
//
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//
//       );
//
//
//     },
//     separatorBuilder: (BuildContext context, int index) => const Divider(),
// ),