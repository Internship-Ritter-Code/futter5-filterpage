import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget{
  String nama;
  DetailPage({this.nama});
  _DetailState createState()=> _DetailState();

}



class _DetailState extends State<DetailPage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: ListView(
        children:<Widget>[
          Container(
            child: Text('${widget.nama}')
          ),
          Container()
        ],
      ),
    );
    throw UnimplementedError();
  }

}