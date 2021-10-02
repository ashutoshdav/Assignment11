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
  MyHomePage({Key? key, }) : super(key: key);

 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu buttons'),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: [
              Text('simple Menu button',style: TextStyle(fontSize: 20,color: Colors.grey),),
              SizedBox(height: 20,),
              DropdownButton<String>( 
                isExpanded: true,
                value: _chosenValue,
                style: TextStyle(color: Colors.black),
                items: <String>[
                  'apple','orange','pinapple','banana',
                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );

                }).toList(),
                hint: Text('selectItem',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: (value){
                setState(() {
                  _chosenValue = value;
                });
              },
            ),
            
         ],
      ),
   ),
        
      ),
      
    );
      }
}

