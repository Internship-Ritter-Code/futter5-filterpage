import 'package:flutter/material.dart';
import 'package:flutter5_filterpage/page/date_picker.dart';
import 'package:flutter5_filterpage/page/search_listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          MaterialButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchListPage()));
              },
            color: Colors.brown,
            textColor: Colors.white,
            child: Text('Search List View'),
          ),
          MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNumberPicker()));
            },
            color: Colors.brown,
            textColor: Colors.white,
            child: Text('Date Picker'),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }

}