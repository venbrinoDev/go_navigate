import 'package:flutter/material.dart';
import 'package:go_navigate/go_navigate.dart';

Go home = Go.init();

void main(){
  runApp( MaterialApp(
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/':(_) =>Home(),
        '/second':(_) =>Screen1()
      }
  ));
}



class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>  Scaffold(

    appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        title:const Text('Home',style:
        TextStyle(fontSize: 14,fontWeight:FontWeight.w500),)),

    body:  Center(child: ElevatedButton(onPressed:(){
      home.goTo(context, '/second');
    }
        , child:const Text('Home',)),),
  );


}


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>  Scaffold(

    appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        title:const Text('Screen1',style:
        TextStyle(fontSize: 14,fontWeight:FontWeight.w500),)),

    body:  Center(child: ElevatedButton(onPressed:(){
      home.goToAndDrop(context,defaultHome: '/oo');
    }
        , child:const Text('Screen',)),),);
}
