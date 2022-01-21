import 'package:email_password_login/model/Compte.model.dart';
import 'package:email_password_login/model/blogs.model.dart';
import 'package:email_password_login/model/trainner.model.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';


import 'package:flutter/material.dart';
class GlobalParameter{
  static final  email='hajar@gmail.com';
  static final password='123456';
  static final trainners ={
    0:Trainner(id:1,name: 'Mohamed Mohamed',profile: 'assets/images/foot.jpg',score: 5,adress:'Mohamed_mohamed',contact:'08725834',description:'I am Coach mohamed with city club Fitness where we teach you to become the hero of your own story. We are veteran ran and minority-operated. We specialize in Glute Development (booty building), Corrective Exercise, Fat-loss, Body Recomposition, strength & conditioning, tactical strength, and conditioning.',email:'mohamed@gmail.com',job:'Coach at city club'),
    1:Trainner(id:2,name: 'Yassine Yassine',profile: 'assets/images/image1.jpg',score: 4,adress:'Yassine_Yassine',contact:'08725834',description:'I am Coach yassine with hayat club Fitness where we teach you to become the hero of your own story',email:'yassine@gmail.com',job:'Coach at hayat club'),
    2:Trainner(id:3,name: 'Safaa Yassine',profile: 'assets/images/list.jpg',score: 2,adress:'Safaa_Yassine',contact:'08725834',description:'I am Coach safaa with mundiasport club Fitness where we teach you to become the hero of your own story',email:'safaa@gmail.com',job:'Coach at mundiasport'),
    3:Trainner(id:4,name: 'Ahmed Yassine',profile: 'assets/images/foot.jpg',score: 5,adress:'Ahmed_Yassine',contact:'08725834',description:'I am Coach ahmed with city club Fitness where we teach you to become the hero of your own story',email:'ahmed@gmail.com',job:'Coach at city club'),
    4:Trainner(id:5,name: 'Hanane Yassine',profile: 'assets/images/list.jpg',score: 3,adress:'Hanane_yassine',contact:'08725834',description:'I am Coach hanane with rouge club Fitness where we teach you to become the hero of your own story',email:'hanane@gmail.com',job:'Coach at rouge club')
  };
  static final blogs ={
    0:Blogs(id:1,title: 'Symptoms of  torn meniscus and osteoarthritis',profile: 'assets/images/image2.png',writer: 'Sylvie Tuner',date: 'Apr 03,2021',description:'Symptoms of a torn meniscus and knee osteoarthritis are very similar. Find out how to tell the difference and get a diagnosise' ),
    1:Blogs(id:2,title: 'A Guide to Getting Brain Rest After a Concussion',profile: 'assets/images/image3.jpg',writer: 'Hal Koss ',date: ' Mar 20,2021',description:'Learn how you can practice cognitive rest, also known as brain rest, after a concussion.' ),
    2:Blogs(id:3,title: 'What Is Meditation ',profile: 'assets/images/image4.jpg',writer: 'Kim Taehyung ',date: 'Feb 21,2020',description:'Meditation involves developing the ability to consciously train our attention and awareness.Our day to day lives are usually bound up with solving one problem after the next.' ),
    3:Blogs(id:4,title: 'JOIN OUR ACTIVE CHALLENGE AND WALK',profile: 'assets/images/image5.png',writer: 'Jon Mayer',date: 'Jan 19,2021',description:'With the days getting longer, and brighter months ahead, join us for a month of active fitness challenges ')

  };
  static final images={
    0:'assets/images/box.jpg',
    1:'assets/images/boxing.jpg',
    2:'assets/images/lifting.jpg',
    3:'assets/images/pilates.jpg',
    4:'assets/images/zomba.jpg',
    5:'assets/images/yoga.jpg',


  };
  static final imagesHome={
    0:'assets/images/Title.PNG',
    1:'assets/images/trai.PNG',
    2:'assets/images/lifting.jpg',


  };
  static final titles={
    0:'BOX JUMPING',
    1:'BOXING',
    2:'WEIGHT LIFTING',
    3:'PILATESS',
    4:'ZOMBA',
    5:'YOGA',


  };
  static final courses={
    0:'/Course1',
    1:'/Course2',
    2:'/Course3',
    3:'/Course4',
    4:'/Course5',
    5:'/Course6',


  };
  static final Map<int,YoutubePlayerController> controller={
    0: YoutubePlayerController(
  initialVideoId: 'rWaz4FEIcBw', // id youtube video
  flags: YoutubePlayerFlags(
  autoPlay: false,
  mute: false,
  )),
    1: YoutubePlayerController(
        initialVideoId: 'rWaz4FEIcBw', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    2: YoutubePlayerController(
        initialVideoId: 'NJ7bDxymdiw', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    3: YoutubePlayerController(
        initialVideoId: 'gvm01OCQys4', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),



  };
  static final Map<int,YoutubePlayerController> controllerBoxing={
    0: YoutubePlayerController(
        initialVideoId: 'LjeJmHg_S4A', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    1: YoutubePlayerController(
        initialVideoId: 'dz2QPE_kLgE', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    2: YoutubePlayerController(
        initialVideoId: 'Z5vxiqSomHk', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
  };
  static final Map<int,YoutubePlayerController> controllerZomba={
    0: YoutubePlayerController(
        initialVideoId: 'ULrcDcQabdA', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    1: YoutubePlayerController(
        initialVideoId: 'JAtBXSA4aLg', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    2: YoutubePlayerController(
        initialVideoId: 'GdFQ6Y9ppkY', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    3: YoutubePlayerController(
        initialVideoId: 'Cgnl9-2PuVc', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
  };
  static final Map<int,YoutubePlayerController> controllerPilates={
    0: YoutubePlayerController(
        initialVideoId: 'NyP_waVgL1w', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    1: YoutubePlayerController(
        initialVideoId: 'nnt34RN74Rs', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    2: YoutubePlayerController(
        initialVideoId: 'K56Z12XNQ5c', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),

  };
  static final Map<int,YoutubePlayerController> controllerLifting={
    0: YoutubePlayerController(
        initialVideoId: 'WIHy-ZnSndA', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    1: YoutubePlayerController(
        initialVideoId: 'ySwgYYgRZvE', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    2: YoutubePlayerController(
        initialVideoId: 'nz8SvYZc7jw', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    3: YoutubePlayerController(
        initialVideoId: 'mf1xQS_Zlkc', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),

  };
  static final Map<int,YoutubePlayerController> controllerYoga={
    0: YoutubePlayerController(
        initialVideoId: 'xFEAOzWLx8Y', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    1: YoutubePlayerController(
        initialVideoId: 'v7SN-d4qXx0', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    2: YoutubePlayerController(
        initialVideoId: '8T39OBNaNzU', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),
    3: YoutubePlayerController(
        initialVideoId: 'BPobdbmzY9o', // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        )),



  };
  static  Map<String,Compte> compte;
  static  Compte comptes=new Compte(0, '', '');
}
