import 'package:flutter/material.dart';

class ListPage extends StatefulWidget{

  @override 
  State<StatefulWidget> createState(){
    return _ListPageState();
  }

}

class _ListPageState extends State<ListPage>{
  @override 
  Widget build (BuildContext context){
    return Scaffold(
      body: Text('Chega de zuar o Munhoz'),
    );
  }
}