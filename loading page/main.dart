import 'package:flutter/material.dart';

import './showcase.dart';
import './workspace.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpinKit Demo',
      debugShowCheckedModeBanner: false,
       theme: new ThemeData(
        //primaryColor: Colors.cyan[300]
      ),
     
      home: Scaffold(
        backgroundColor: Colors.cyan[400],
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              
              Text("Start searching for your opponent?", style: TextStyle(fontSize: 20.0),textAlign:TextAlign.center,),
              const SizedBox(height: 180.0),
              Align(
                child: LayoutBuilder(
                  builder: (context, _) {
                    return IconButton(
                      color: Colors.cyan[50],
                      icon: Icon(Icons.check_circle_outline),///
                      iconSize: 100.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => ShowCase(),////
                            fullscreenDialog: true,
                          ),
                        );
                      },
                    );
                  },
                ),
                alignment: Alignment.bottomCenter,
              ),
              Positioned.fill(
                child: Center(
                  child: WorkSpace(),
                  
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}