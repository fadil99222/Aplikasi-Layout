import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("layout Grid & container"), 
            backgroundColor: Colors.amber
          ),

        body: Container(child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, mainAxisSpacing: 10,childAspectRatio: 4/2 ),
        padding: EdgeInsets.all(5),
        children: [
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.red), 
              child: Center(child: Text ('grid 1', style: TextStyle(color: Colors.white, fontSize: 30),)),
            ),
            Container(child :GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10),
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.orange), 
                      child: Center(child: Text ('grid 2', style: TextStyle(color: Colors.white, fontSize: 30),))
                    ),
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.pink), 
                     child: Center(child: Text ('grid 3', style: TextStyle(color: Colors.white, fontSize: 30),))
                    )
                  ],
                ) 
              ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
              child: Center(child: Text ('grid 4', style: TextStyle(color: Colors.white, fontSize: 30),))
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.cyan), 
              child: Center(child: Text ('grid 5', style: TextStyle(color: Colors.white, fontSize: 30),))
            ),

        ],
        ),
        ),
        

      ),
    );
  }
}
