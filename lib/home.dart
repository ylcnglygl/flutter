import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String msg = 'Çocuk Olacak Adam';
  String msg2 = 'Adam Olacak Çocuk';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Çocuk Adam',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.amber[400],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.blue[100],
          child: Column(
            children: <Widget>[
              SizedBox(height: 36.5,),
              RaisedButton(onPressed: _textChange,
              color: Colors.green[100],elevation: 0,
                child: Text('Butona Bas',
                style: TextStyle(fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
                textAlign: TextAlign.center,
                ),
                splashColor: Colors.white,
              ),
              SizedBox(height: 36.5,),
              Center(
                child: Container(
                  color: Colors.grey[300],
                  child: Text(msg,
                  style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold)),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.red[300],
                  child: Text(msg2,
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontStyle: FontStyle.italic),),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.grey[300],
                  child: Text(msg,
                    style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
              Center(
                child: Container(
                  color: Colors.red[300],
                  child: Text(msg2,
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontStyle: FontStyle.italic),),
                  alignment: Alignment(0.0, 0.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _textChange(){
    setState(() {
      if(msg.startsWith('Ç')){
        msg = 'Adam Olacak Çocuk';
        msg2 = 'Çocuk Olacak Adam';
      }else{
        msg = 'Çocuk Olacak Adam';
        msg2 = 'Adam Olacak Çocuk';
      }
    });
  }
}
