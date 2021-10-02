import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  void _incrementCounter() {
    setState(() {
     
      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Demo Home Page',),
      ),
      body: Container(
        color: Colors.black45,
        child: Center(
          child: Column(
           
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Test Speed Dial FAB Example',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.crop_16_9_rounded,color: Colors.white,),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
