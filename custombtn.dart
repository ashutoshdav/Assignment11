import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
int selected = 0;
Widget custombtn(String text, int index){
  return OutlineButton(
    onPressed: (){
      setState(() {
        selected = index;
      });
    },
    child: Text(text,style: TextStyle(color:(selected == index)? Colors.indigo : Colors.lightBlue),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    borderSide: BorderSide(color:(selected == index)? Colors.indigo : Colors.lightBlue),
  );
}

  int selected2 = 0;
  Widget custombtn2(String text, int index){
  return OutlineButton(
    onPressed: (){
      setState(() {
        selected2 = index;
      });
    },
    child: Text(text,style: TextStyle(color:(selected == index)? Colors.indigo : Colors.lightBlue),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    borderSide: BorderSide(color:(selected2 == index)? Colors.indigo : Colors.lightBlue),
  );
}


@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
       title: Text('custom Radiobutton'),
       centerTitle: true,
        
      ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Vertical',style: TextStyle(fontSize: 30,color: Colors.indigo),),
           SizedBox(height: 10,),
           custombtn('1st btn', 1),
           SizedBox(height: 10,),
           custombtn('2st btn', 2),
           SizedBox(height: 10,),
           custombtn('3st btn', 3),
           SizedBox(height: 10,),
           custombtn('4st btn', 4),
           SizedBox(height: 30,),

           Text('Horizontal',style: TextStyle(fontSize: 30,color: Colors.indigo),),
           SizedBox(height: 30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             
             children: [
            SizedBox(height: 30,),
           custombtn2('button 1', 5),
            SizedBox(height: 10,),
           custombtn2('button 2', 6),
            SizedBox(height: 10,),
           custombtn2('button 3', 7),
            SizedBox(height: 10,),
           custombtn2('button 4', 8),
             ],
           ),
           
         ],
       ),
     ),
     backgroundColor: Colors.black,
     
    )
    );
  }
}
  

